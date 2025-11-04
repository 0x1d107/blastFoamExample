#1/bin/bash
curl -LsH 'Accept: application/x-bibtex' "https://api.crossref.org/works/$(jq -sRr @uri)/transform"| awk -f prettybib.awk
