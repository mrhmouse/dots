(defvar *sql-indent-width* 2)

(defun sql-indent-line ()
  (interactive)
  (save-excursion
    (indent-line-to
     (cond
      ((or (sql-in-column-list?)
           (sql-in-join-clause?))
       (sql-indent-under-clause))
      (t 0)))))

(defun sql-indent-under-clause ()
  (let ((current-line (line-number-at-pos)))
    (save-excursion
      (sql-last-clause)
      (if (= current-line (line-number-at-pos))
          0
        (+ *sql-indent-width* (current-column))))))

(defun sql-last-clause ()
  (catch 'clause
    (while t
      (cond
       ((looking-at "\\bselect\\b")
        (throw 'clause 'select))
       ((looking-at "\\bfrom\\b")
        (throw 'clause 'from))
       ((looking-at "\\bjoin\\b")
        (throw 'clause 'join))
       ((looking-at "\\bwhere\\b")
        (throw 'clause 'where))
       ((bobp)
        (throw 'clause nil))
       (t (backward-word))))))

(defun sql-in-column-list? ()
  (save-excursion
    (eql 'select (sql-last-clause))))

(defun sql-in-join-clause? ()
  (save-excursion
    (eql 'join (sql-last-clause))))

(add-hook 'sql-mode-hook
          (lambda ()
            (setq-local indent-line-function
                        'sql-indent-line)))
