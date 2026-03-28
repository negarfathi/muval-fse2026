import sys
import json
import re

# log_list = ["/workspace/log/a20211012-131829-YqCjheRd/d20211012-131829-YqCjheRd-0000.log",
#             "/workspace/log/a20211012-131837-tWOctAZm/d20211012-131837-tWOctAZm-0000.log",
#             "/workspace/log/a20211012-121321-RpnQmhxt/d20211012-121321-RpnQmhxt-0000.log",
# ]

log_list = ["compare600.log",
            # "/workspace/log/conj-biased-600sec-0000.log",
            # "/workspace/log/disj-biased-600sec-0000.log",
            # "/workspace/log/table-coarse-600sec-0000.log",
            # "/workspace/log/table-finer-b-600sec-0000.log"
            # "/workspace/log/a20211012-041855-ydRpHIva/d20211012-041855-ydRpHIva-0000.log"
]

# def gen_report(log):
#     with open(log,"r") as f:
#         lines = f.readlines()

#     report = {}

#     for i,line in enumerate(lines):
#         # print(line)
#         if "START" in line:
#             x = eval(line)
#             filename = x["file"]
#             report[filename] = [0, -1]
#         if "SAT" in line and "UNSAT" not in line:
#             x = eval(line)
#             report[filename] = [1, x["time"]]

#     return report
#         # print(report)
#         # if i >= 10:
#         #     sys.exit()

def gen_report(log):
    with open(log,"r") as f:
        lines = f.readlines()

    report = {}
    flag = False
    for i,line in enumerate(lines):
        # print(line)

        if "z3_report" in line:
            x = re.search(r"z3_report time: (.*?) pid", line)
            time = x.groups()[0] 
            flag = True            
            # filename = x["file"].split("/")[-1]
            # report[filename] = ["timeout", 600]
        if "finished" in line:
            out = re.search(r"(.*?) finished!", line)
            filename = out.groups()[0]
            filename = re.sub("sygus-bench-", "XC-",filename)
            filename = re.sub("smt", "sl",filename)
            if flag:
                report[filename] = ["sat", time]
            else:
                report[filename] = ["unsat", 600]
            flag = False
            
    return report
        

report_list = []

for l in log_list:
    r = gen_report(l)
    report_list.append(r)

print(report_list)
# # merge reports
# final = report_list[0]

# for report in report_list:
#     for f in report:
#         if report[f][0] == "sat":
#             final[f][0] = "sat"

# c = 0
# for k in final:
#     if final[k][0] == "sat":
#         c+=1

# print(c)
