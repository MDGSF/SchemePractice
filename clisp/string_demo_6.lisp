; sorting the strings
(write (sort (vector "Amal" "Akbar" "Anthony") #'string<))
(terpri)

; merging the strings
(write (merge 'vector (vector "Rishi" "Zara" "Priyanka")
  (vector "Anju" "Anuj" "Avni") #'string<))
(terpri)

; reverse
(write-line (reverse "Are we ok"))

; concate
(write-line (concatenate
              'string
              "Are we not drawn onward, "
              "we few, drawn onward to new era"))
