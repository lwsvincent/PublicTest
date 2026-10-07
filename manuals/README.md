# 測試設備手冊清單（SCPI / Remote Programming）

| Model | 類型 | 是否有 SCPI | 手冊 | 連結 |
|---|---|---|---|---|
| N1913B | Keysight EPM 功率計 | ✅ SCPI | N1913A/N1914A EPM Programming Guide (N1913-90008, 2023)；B 型號指令相容 A 型號 | https://www.keysight.com/il/en/assets/9018-02514/programming-guides/9018-02514.pdf |
| ML2495A | Anritsu 脈衝功率計 | ✅ SCPI-like（Anritsu 指令集） | ML248xB/ML249xA Remote Programming Manual (13000-00239J) | https://dl.cdn-anritsu.com/en-us/test-measurement/files/Manuals/Programming-Manual/13000-00239J.pdf |
| ML2495A | 〃 | | 舊版 ML248xA/ML249xA Remote Programming Manual (13000-00163E) | https://dl.cdn-anritsu.com/en-us/test-measurement/files/Manuals/Programming-Manual/13000-00163E.pdf |
| E4412A | Keysight E-series CW 功率感測器 | ❌ 無（透過 N1913B 控制） | Operating & Service Guide (E4412-90013) | https://xdevs.com/doc/HP_Agilent_Keysight/E4412A%20and%20E4413A%20Power%20Sensors%20Operation%20and%20Service%20Guide%20E4412-90013%20c20130308%20%5B49%5D.pdf |
| N9020B | Keysight MXA 訊號分析儀 | ✅ SCPI | X-Series Programmer's Guide (N9020-90112) | https://xdevs.com/doc/HP_Agilent_Keysight/N9000_series/N9020-90112%20X-Series%20Signal%20Analyzer%20Programmer%27s%20Guide%20%5B52%5D.pdf |
| E4420B | Agilent ESG-A 訊號產生器 | ✅ SCPI | ESG Family Programming Guide (E4400-90324) | https://docs.ampnuts.ru/eevblog.docs/HP_Agilent_Keysight/HP%20ESG%20E44xx%20Series%20Documentation/HP%20E44xxB%20Prog.pdf |
| 33250A | Agilent 函數/任意波形產生器 | ✅ SCPI | User's Guide (33250-90002)，第 4 章為完整 SCPI 指令參考 | https://xdevs.com/doc/HP_Agilent_Keysight/HP%2033250A%20User.pdf |
| MA2490A | Anritsu 功率感測器（ML2490A 系列專用） | ❌ 無（透過 ML2495A 控制） | 感測器規格/操作見 ML2490A 系列 Operation Manual | Anritsu 官網 ML2495A 產品頁 → Manuals |

## 注意

- **N9020B**：SCPI 指令依「量測模式」分冊。除了上面的通用 Programmer's Guide，
  實際量測指令要看 *Spectrum Analyzer Mode User's & Programmer's Reference*，
  請到 Keysight N9020B 支援頁面依儀器韌體版本下載（https://www.keysight.com/support/N9020B）。
- **Infra 建議**：真正要寫 driver 的只有 5 台（N1913B、ML2495A、N9020B、E4420B、33250A）。
  兩顆 sensor（E4412A、MA2490A）只需在功率計端設定校正因子 / 頻率。

## 下載

執行 `./download.sh` 會把所有 PDF 下載到本目錄。
