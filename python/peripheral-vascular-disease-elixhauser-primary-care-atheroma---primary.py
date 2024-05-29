# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"G742700","system":"readv2"},{"code":"G740.00","system":"readv2"},{"code":"G742600","system":"readv2"},{"code":"G742800","system":"readv2"},{"code":"G742400","system":"readv2"},{"code":"G74y000","system":"readv2"},{"code":"G741.00","system":"readv2"},{"code":"G74y700","system":"readv2"},{"code":"G742100","system":"readv2"},{"code":"G742500","system":"readv2"},{"code":"G742000","system":"readv2"},{"code":"G74y300","system":"readv2"},{"code":"G74y600","system":"readv2"},{"code":"G702.00","system":"readv2"},{"code":"G74y500","system":"readv2"},{"code":"G702z00","system":"readv2"},{"code":"G74y800","system":"readv2"},{"code":"G742200","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peripheral-vascular-disease-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["peripheral-vascular-disease-elixhauser-primary-care-atheroma---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["peripheral-vascular-disease-elixhauser-primary-care-atheroma---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["peripheral-vascular-disease-elixhauser-primary-care-atheroma---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
