#! /home/huangjian/local/ChezScheme9.5.2/bin/scheme --script
(for-each
  (lambda (x) (display x) (newline))
  (cdr (command-line)))
