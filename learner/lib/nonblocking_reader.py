import typing

import threading
import queue
import time
import select
import signal

# For non-blocking read of a file
# The implementation may be OS dependent
class NonblockReader:
    def __init__(self, file:typing.IO):
        self.file = file
        self.queue : "queue.Queue[str]" = queue.Queue()

    def enqueue_output(self, timeout=None):
        # auxiliary class and function for signal handling
        class Alarm(Exception):
            pass
        def alarm_handler(signum, frame):
            raise Alarm

        if timeout is not None:
            signal.signal(signal.SIGALRM, alarm_handler)
            signal.alarm(int(timeout)+1)
        try:
            for line in self.file:
                self.queue.put(line.decode("utf-8").rstrip())
            if timeout is not None:
                # disable SIGALRM
                signal.alarm(0)
        except Alarm:
            pass

    def readline(self, timeout: typing.Optional[float])->typing.Optional[str]:
        if timeout <= 0.0:
            return None
        try:
            return self.queue.get(timeout=timeout)
        except queue.Empty:
            return None
