import sys
import json
import csv
import pathlib

# data = json.load(pathlib.Path("pcsat_data.txt").open())
data = json.load(pathlib.Path("test_data.json").open())


log_list = ["/workspace/log/a20211012-041847-dwmwENFP/d20211012-041847-dwmwENFP-0000.log",
            "/workspace/log/a20211013-130221-vtKZIqsX/d20211013-130221-vtKZIqsX-0000.log",
            "/workspace/log/a20211013-041359-CBTwtAuS/d20211013-041359-CBTwtAuS-0000.log",
            "/workspace/log/conj-biased-600sec-0000.log",
            # "/workspace/log/disj-biased-600sec-0000.log",
            "/workspace/log/table-coarse-600sec-0000.log",
            "/workspace/log/table-finer-b-600sec-0000.log"
            # "/workspace/log/a20211012-041855-ydRpHIva/d20211012-041855-ydRpHIva-0000.log"
]

# names = ["A2C/flex", "rand1", "rand2", "conj", "disj", "MC/expert", "MC/flex"]
names = ["A2C/flex", "rand1", "rand2", "conj", "MC/expert", "MC/flex"]

def gen_report(log):
    with open(log,"r") as f:
        lines = f.readlines()

    report = {}

    for i,line in enumerate(lines):
        # print(line)
        if "START" in line:
            x = eval(line)
            filename = x["file"]
            report[filename] = ["timeout", 600]
        if "SAT" in line and "UNSAT" not in line:
            x = eval(line)
            report[filename] = ["sat", x["time"]]
        if "UNSAT" in line:
            x = eval(line)
            report[filename] = ["unsat", x["time"]]

    return report
        # print(report)
        # if i >= 10:
        #     sys.exit()

# report = gen_report(log_list[0])

# for k in report:
#     # print(k.split("/")[-1])
#     assert (k.split("/")[-1] in data)


report_list = []

for l in log_list:
    r = gen_report(l)
    report_list.append(r)

test_data = {}
    

for i, n in enumerate(names):
    report = report_list[i]
    for k in report:
        filename = k.split("/")[-1]
        entry = data[filename]
        
        entry[n] = report[k]
        test_data[filename] = entry
        

# print(test_data)
    
# # merge reports
# final = report_list[0]

# for report in report_list:
#     for f in report:
#         if report[f][0] > 0:
#             final[f][0] += 1

# c = 0
# for k in report:
#     if report[k][0] == "sat":
#         c+=1

# print(c)


c = 0
t = 0
time_limit = 60
solver = "HoICE"
# solver = "Eldarica"
solver = "A2C/flex"
# solver = "rand1"
# solver = "conj"
# solver = "MC/flex"
# solver = "Spacer"
# solver = "MC/original"

for k in test_data:
    if test_data[k][solver][0] == "sat" and test_data[k][solver][1] <= time_limit:
        c+=1
    if test_data[k][solver][0] != "timout" and test_data[k][solver][1] <= time_limit:
        t+=test_data[k][solver][1]
    else:
        t+=time_limit

print(c)
print(t)
# print(t/c)


row_one = [""]
for n in test_data[list(test_data.keys())[0]]:
    row_one.append(n+":Result")
    row_one.append(n+":Time")

print(row_one)

with open('test_data.csv', 'w', newline='') as csvfile:
    spamwriter = csv.writer(csvfile, delimiter=',',
                            quotechar='|', quoting=csv.QUOTE_MINIMAL)
    spamwriter.writerow(row_one)
    for k in test_data:
        d = test_data[k]
        row = []
        for j in d:
            row.append(d[j][0])
            row.append(d[j][1])
        row = [k] + row
        # print(row)
        # sys.exit()
        spamwriter.writerow(row)


test_data_json = json.dumps(test_data)
with open("test_data_all.json","w") as f:    
    f.write(test_data_json)
print("test data saved.")
 
