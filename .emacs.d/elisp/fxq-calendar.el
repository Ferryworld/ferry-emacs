;; Set org-agenda-files for Org-Mode
;;(setq org-agenda-files (list "~/diary/TimeQuadrant.org"))

(setq calendar-latitude +30.0)
(setq calendar-longitude +120.2)
;;/*time display                          */
(set-time-zone-rule "GMT-8")
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

(setq calendar-location-name "Hangzhou")
(setq calendar-remove-frame-by-deleting t)
(setq calendar-week-start-day 1)
(setq mark-holidays-in-calendar nil)

(setq christian-holidays nil)
(setq hebrew-holidays nil)
(setq islamic-holidays nil)
(setq general-holidays '((holiday-fixed 1 1 "元旦")
                         (holiday-fixed 2 14 "情人节")
                         (holiday-fixed 3 14 "白色情人节")
                         (holiday-fixed 3 8 "妇女节")
                         (holiday-fixed 4 1 "愚人节")
                         (holiday-fixed 5 1 "劳动节")
                         (holiday-float 5 0 2 "母亲节")
                         (holiday-fixed 6 1 "儿童节")
                         (holiday-float 6 0 3 "父亲节")
                         (holiday-fixed 7 1 "建党节")
                         (holiday-fixed 8 1 "建军节")
                         (holiday-fixed 9 10 "教师节")
                         (holiday-fixed 10 1 "国庆节")
                         (holiday-fixed 12 25 "圣诞节")))
;;                       (holiday-fixed 2 5 "元宵节")
;;                       (holiday-fixed 4 4 "清明节")
;;                       (holiday-fixed 4 21 "鬼节")
;;                       (holiday-fixed 6 22 "端午节")
;;                       (holiday-fixed 9 28 "中秋节")

;;Diary

(setq diary-file "~/diary/diary")
(setq diary-mail-addr "xiaoqiang.fu@gmail.com")

(setq mark-diary-entries-in-calendar t)
(setq appt-issue-message nil)
(setq mark-holidays-in-calendar t)
(setq view-calendar-holidays-initially t)

;;Thursday, January 22, 2004: Chinese New Year (甲-申)
(setq chinese-calendar-celestial-stem
["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"])
(setq chinese-calendar-terrestrial-branch
["子" "丑" "寅" "卯" "辰" "巳" "戊" "未" "申" "酉" "戌" "亥"])
