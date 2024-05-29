# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"7A1B700","system":"readv2"},{"code":"7A1B500","system":"readv2"},{"code":"7A1BB00","system":"readv2"},{"code":"7A1B000","system":"readv2"},{"code":"7A1C200","system":"readv2"},{"code":"7A1BC00","system":"readv2"},{"code":"7A1C500","system":"readv2"},{"code":"7A1C000","system":"readv2"},{"code":"7A1BD00","system":"readv2"},{"code":"7A1B900","system":"readv2"},{"code":"7A1B300","system":"readv2"},{"code":"7A1B600","system":"readv2"},{"code":"7A1BA00","system":"readv2"},{"code":"7A1B100","system":"readv2"},{"code":"7A1B800","system":"readv2"},{"code":"7A1B200","system":"readv2"},{"code":"7A1C300","system":"readv2"},{"code":"7A1C100","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peripheral-vascular-disease-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["peripheral-vascular-disease-elixhauser-primary-care-endov---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["peripheral-vascular-disease-elixhauser-primary-care-endov---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["peripheral-vascular-disease-elixhauser-primary-care-endov---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
