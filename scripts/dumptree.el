(defun lstcar (lst)
  (cond ((car-safe lst)
         (let ((f (car lst)))
           (if (keywordp f)
               nil
             (append (list f) (->> (cdr lst) (-map 'lstcar) -non-nil)))))
        (t
         nil)
        )
  )
(pp (->> (org-element-parse-buffer) (lstcar)))
