# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"7A48000","system":"readv2"},{"code":"7A47200","system":"readv2"},{"code":"7A48C00","system":"readv2"},{"code":"7A11000","system":"readv2"},{"code":"7A35100","system":"readv2"},{"code":"7A40000","system":"readv2"},{"code":"7A45200","system":"readv2"},{"code":"7A45700","system":"readv2"},{"code":"P766.00","system":"readv2"},{"code":"P7y0100","system":"readv2"},{"code":"7A45000","system":"readv2"},{"code":"7A41300","system":"readv2"},{"code":"7A46100","system":"readv2"},{"code":"7A41000","system":"readv2"},{"code":"7A40200","system":"readv2"},{"code":"7A40A00","system":"readv2"},{"code":"7A41200","system":"readv2"},{"code":"7A46C00","system":"readv2"},{"code":"7A48400","system":"readv2"},{"code":"7A46000","system":"readv2"},{"code":"7A41900","system":"readv2"},{"code":"7A47600","system":"readv2"},{"code":"7A47700","system":"readv2"},{"code":"7A47C00","system":"readv2"},{"code":"7A46300","system":"readv2"},{"code":"G72y000","system":"readv2"},{"code":"7A11100","system":"readv2"},{"code":"7A45D00","system":"readv2"},{"code":"7A47300","system":"readv2"},{"code":"M271400","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peripheral-vascular-disease-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["arteriovenous-peripheral-vascular-disease-elixhauser-primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["arteriovenous-peripheral-vascular-disease-elixhauser-primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["arteriovenous-peripheral-vascular-disease-elixhauser-primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
