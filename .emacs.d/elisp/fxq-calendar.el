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
(setq general-holidays '((holiday-fixed 1 1 "Ԫ��")
                         (holiday-fixed 2 14 "���˽�")
                         (holiday-fixed 3 14 "��ɫ���˽�")
                         (holiday-fixed 3 8 "��Ů��")
                         (holiday-fixed 4 1 "���˽�")
                         (holiday-fixed 5 1 "�Ͷ���")
                         (holiday-float 5 0 2 "ĸ�׽�")
                         (holiday-fixed 6 1 "��ͯ��")
                         (holiday-float 6 0 3 "���׽�")
                         (holiday-fixed 7 1 "������")
                         (holiday-fixed 8 1 "������")
                         (holiday-fixed 9 10 "��ʦ��")
                         (holiday-fixed 10 1 "�����")
                         (holiday-fixed 12 25 "ʥ����")))
;;                       (holiday-fixed 2 5 "Ԫ����")
;;                       (holiday-fixed 4 4 "������")
;;                       (holiday-fixed 4 21 "���")
;;                       (holiday-fixed 6 22 "�����")
;;                       (holiday-fixed 9 28 "�����")

;;Diary

(setq diary-file "~/diary/diary")
(setq diary-mail-addr "xiaoqiang.fu@gmail.com")

(setq mark-diary-entries-in-calendar t)
(setq appt-issue-message nil)
(setq mark-holidays-in-calendar t)
(setq view-calendar-holidays-initially t)

;;Thursday, January 22, 2004: Chinese New Year (��-��)
(setq chinese-calendar-celestial-stem
["��" "��" "��" "��" "��" "��" "��" "��" "��" "��"])
(setq chinese-calendar-terrestrial-branch
["��" "��" "��" "î" "��" "��" "��" "δ" "��" "��" "��" "��"])
