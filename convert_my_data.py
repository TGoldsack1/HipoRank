'''
Convert my data into expected format:
.txt file, with each line in the format {"article_id": str, "article_text": [str]}
'''

import json

data_fps = ["./data/eLife/test.json", "./data/PLOS/test.json"]

for fp in data_fps:
  with open(fp, "r") as in_file:
    data = json.loads(in_file.read())

  out_docs = open(fp.replace(".json", ".txt"), "w")
  out_sums = open(fp.replace(".json", "_gs.txt"), "w")

  for inst_dict in data:
    doc = inst_dict['abstract'] +  [item for sublist in inst_dict['sections'] for item in sublist]
    summ = inst_dict['summary']

    out_docs.write(json.dumps({"article_id": inst_dict['id'], "article_text": doc}))
    out_docs.write("\n")

    out_sums.write(json.dumps({"article_id": inst_dict['id'], "summary_text": summ}))
    out_sums.write("\n")

  out_docs.close()
  out_sums.close()


    