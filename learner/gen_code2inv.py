import sys
import json
import csv
import pathlib
import re

data = json.load(pathlib.Path("pcsat_data.txt").open())
# data = json.load(pathlib.Path("test_data.json").open())


log_list = ["/workspace/log/a20211014-121926-PRTskRZe/d20211014-121926-PRTskRZe-0000.log",
            # "/workspace/log/a20211012-041855-ydRpHIva/d20211012-041855-ydRpHIva-0000.log"
]

names = ["A2C/flex", "Code2Inv"]

def gen_report(log):
    with open(log,"r") as f:
        lines = f.readlines()

    report = {}

    for i,line in enumerate(lines):
        # print(line)
        if "START" in line:
            x = eval(line)
            filename = "XC-"+x["file"].split("/")[-1]
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
def gen_code2inv(log):
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
                report[filename] = ["sat", float(time)]
            else:
                report[filename] = ["timeout", 600]
            flag = False
            
    return report


report_list = []

for l in log_list:
    r = gen_report(l)
    report_list.append(r)


report_list.append(gen_code2inv("compare600.log"))

test_data = {}
    

for i, n in enumerate(names):
    report = report_list[i]
    for k in report:
        filename = k
        entry = data[filename]
        
        entry[n] = report[k]
        test_data[filename] = entry


# print(len(test_data))
# print(test_data)

# print(test_data)
    
# # merge reports
# final = report_list[0]

# for report in report_list:
#     for f in report:
#         if report[f][0] > 0:
#             final[f][0] += 1
solver = "Spacer"

c = 0
t = 0
for k in test_data:
    if test_data[k][solver][0] == "unsat":
        c+=1
    t += test_data[k][solver][1]
print(c)
print(t)

# row_one = [""]
# for n in test_data[list(test_data.keys())[0]]:
#     row_one.append(n+":Result")
#     row_one.append(n+":Time")

# print(row_one)

# with open('code2inv_clean.csv', 'w', newline='') as csvfile:
#     spamwriter = csv.writer(csvfile, delimiter=',',
#                             quotechar='|', quoting=csv.QUOTE_MINIMAL)
#     spamwriter.writerow(row_one)
#     for k in test_data:
#         d = test_data[k]
#         row = []
#         for j in d:
#             row.append(d[j][0])
#             row.append(d[j][1])
#         row = [k] + row
#         # print(row)
#         # sys.exit()
#         spamwriter.writerow(row)


# row_one = ["instance"]
# for n in test_data[list(test_data.keys())[0]]:
#     if n in ["Code2Inv","A2C/flex","Spacer"]:
#         row_one.append(n)


# print(row_one)

# with open('code2inv_comparison_clean.tsv', 'w', newline='') as csvfile:
#     writer = csv.writer(csvfile, delimiter='\t',
#                             quotechar='|', quoting=csv.QUOTE_MINIMAL)
#     writer.writerow(row_one)
#     for k in test_data:
#         d = test_data[k]
#         row = []
#         for j in d:
#             if j in ["Code2Inv","A2C/flex","Spacer"]:
#                 row.append(d[j][1])
#         row = [k] + row
#         # print(row)
#         # sys.exit()
#         writer.writerow(row)


# test_data_json = json.dumps(test_data)
# with open("code2inv_compare_clean.json","w") as f:    
#     f.write(test_data_json)
# print("code2inv data saved.")
 
