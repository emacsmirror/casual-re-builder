;;; test-casual-re-builder-utils.el --- Casual Re-Builder Utils Tests  -*- lexical-binding: t; -*-

;; Copyright (C) 2024  Charles Choi

;; Author: Charles Choi <kickingvegas@gmail.com>
;; Keywords: tools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:
(require 'ert)
(require 'casual-re-builder-test-utils)
(require 'casual-re-builder-utils)

(ert-deftest test-casual-re-builder-unicode-get ()
  (let ((casual-lib-use-unicode nil))
    (should (string-equal (casual-re-builder-unicode-get :previous) "Previous"))
    (should (string-equal (casual-re-builder-unicode-get :next) "Next")))

  (let ((casual-lib-use-unicode t))
    (should (string-equal (casual-re-builder-unicode-get :previous) "↑"))
    (should (string-equal (casual-re-builder-unicode-get :next) "↓"))))

(provide 'test-casual-re-builder-utils)
;;; test-casual-re-builder-utils.el ends here
