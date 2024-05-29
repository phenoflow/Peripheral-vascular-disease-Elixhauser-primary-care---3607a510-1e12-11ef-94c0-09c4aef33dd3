# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"7A59z00","system":"readv2"},{"code":"7A5A000","system":"readv2"},{"code":"7A5Bz00","system":"readv2"},{"code":"7A32000","system":"readv2"},{"code":"7A59.00","system":"readv2"},{"code":"7A35300","system":"readv2"},{"code":"7A28100","system":"readv2"},{"code":"7A1Cz00","system":"readv2"},{"code":"7A22000","system":"readv2"},{"code":"7A58y00","system":"readv2"},{"code":"7A5Az00","system":"readv2"},{"code":"7A44000","system":"readv2"},{"code":"7A58000","system":"readv2"},{"code":"7A4B100","system":"readv2"},{"code":"7A1Bz00","system":"readv2"},{"code":"7A54000","system":"readv2"},{"code":"7A28000","system":"readv2"},{"code":"7A28200","system":"readv2"},{"code":"7A1C.00","system":"readv2"},{"code":"7A5B.00","system":"readv2"},{"code":"7A5By00","system":"readv2"},{"code":"7A1B.00","system":"readv2"},{"code":"7A6H400","system":"readv2"},{"code":"7A5A.00","system":"readv2"},{"code":"7A58300","system":"readv2"},{"code":"7A4B000","system":"readv2"},{"code":"7A5B000","system":"readv2"},{"code":"7A1Cy00","system":"readv2"},{"code":"7A44.11","system":"readv2"},{"code":"7A58z00","system":"readv2"},{"code":"7A58100","system":"readv2"},{"code":"7A1A100","system":"readv2"},{"code":"7A28C00","system":"readv2"},{"code":"7A35000","system":"readv2"},{"code":"7A58.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peripheral-vascular-disease-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["peripheral-vascular-disease-elixhauser-primary-care-translumin---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["peripheral-vascular-disease-elixhauser-primary-care-translumin---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["peripheral-vascular-disease-elixhauser-primary-care-translumin---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
