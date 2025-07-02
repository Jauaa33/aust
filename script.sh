#!/bin/bash

URL="https://immi.homeaffairs.gov.au/what-we-do/whm-program/status-of-country-caps"

html=$(curl -s "$URL")

awk '
BEGIN { RS="<tr"; IGNORECASE=1 }
/<td[^>]*>[^<]*Spain[^<]*<\/td>/ {
    if ($0 ~ /<span[^>]*>[^<]*paused[^<]*<\/span>/) {
        msmtp "$MAIL_TO"
    } else {
        msmtp "$MAIL_TO"
    }
}
' "$html"