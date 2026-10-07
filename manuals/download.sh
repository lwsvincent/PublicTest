#!/usr/bin/env bash
# 下載所有儀器手冊到此目錄
set -u
cd "$(dirname "$0")"
dl() { echo "-> $1"; curl -fL --retry 3 -o "$1" "$2" || echo "!! 失敗: $1"; }
dl N1913_N1914_EPM_Programming_Guide.pdf "https://www.keysight.com/il/en/assets/9018-02514/programming-guides/9018-02514.pdf"
dl ML249xA_Remote_Programming_13000-00239J.pdf "https://dl.cdn-anritsu.com/en-us/test-measurement/files/Manuals/Programming-Manual/13000-00239J.pdf"
dl ML249xA_Remote_Programming_13000-00163E.pdf "https://dl.cdn-anritsu.com/en-us/test-measurement/files/Manuals/Programming-Manual/13000-00163E.pdf"
dl E4412A_E4413A_Operating_Service_Guide.pdf "https://xdevs.com/doc/HP_Agilent_Keysight/E4412A%20and%20E4413A%20Power%20Sensors%20Operation%20and%20Service%20Guide%20E4412-90013%20c20130308%20%5B49%5D.pdf"
dl N9020_X-Series_Programmers_Guide.pdf "https://xdevs.com/doc/HP_Agilent_Keysight/N9000_series/N9020-90112%20X-Series%20Signal%20Analyzer%20Programmer%27s%20Guide%20%5B52%5D.pdf"
dl E44xxB_ESG_Programming_Guide.pdf "https://docs.ampnuts.ru/eevblog.docs/HP_Agilent_Keysight/HP%20ESG%20E44xx%20Series%20Documentation/HP%20E44xxB%20Prog.pdf"
dl 33250A_Users_Guide.pdf "https://xdevs.com/doc/HP_Agilent_Keysight/HP%2033250A%20User.pdf"
