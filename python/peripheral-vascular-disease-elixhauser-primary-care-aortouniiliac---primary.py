# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"7A41100","system":"readv2"},{"code":"7A41.00","system":"readv2"},{"code":"7A43.11","system":"readv2"},{"code":"7A43200","system":"readv2"},{"code":"7A43011","system":"readv2"},{"code":"7A11200","system":"readv2"},{"code":"7A40.11","system":"readv2"},{"code":"G722.00","system":"readv2"},{"code":"G722z00","system":"readv2"},{"code":"7A44211","system":"readv2"},{"code":"G727.00","system":"readv2"},{"code":"7A40.00","system":"readv2"},{"code":"7A41D00","system":"readv2"},{"code":"7A41z00","system":"readv2"},{"code":"7A42.11","system":"readv2"},{"code":"7A40z00","system":"readv2"},{"code":"7A11300","system":"readv2"},{"code":"7A41.11","system":"readv2"},{"code":"G722000","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peripheral-vascular-disease-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["peripheral-vascular-disease-elixhauser-primary-care-aortouniiliac---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["peripheral-vascular-disease-elixhauser-primary-care-aortouniiliac---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["peripheral-vascular-disease-elixhauser-primary-care-aortouniiliac---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
