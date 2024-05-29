# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"7A16y00","system":"readv2"},{"code":"G73y.00","system":"readv2"},{"code":"G73yz00","system":"readv2"},{"code":"G743.00","system":"readv2"},{"code":"Gyu7300","system":"readv2"},{"code":"G72A.00","system":"readv2"},{"code":"Gyu7400","system":"readv2"},{"code":"7A41y00","system":"readv2"},{"code":"G74y.00","system":"readv2"},{"code":"7A40y00","system":"readv2"},{"code":"7A15y00","system":"readv2"},{"code":"7A12y00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peripheral-vascular-disease-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["peripheral-vascular-disease-elixhauser-primary-care-unspecified---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["peripheral-vascular-disease-elixhauser-primary-care-unspecified---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["peripheral-vascular-disease-elixhauser-primary-care-unspecified---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
