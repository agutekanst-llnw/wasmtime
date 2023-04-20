;;! target = "aarch64"
;;!
;;! settings = ['enable_heap_access_spectre_mitigation=true']
;;!
;;! compile = true
;;!
;;! [globals.vmctx]
;;! type = "i64"
;;! vmctx = true
;;!
;;! [globals.heap_base]
;;! type = "i64"
;;! load = { base = "vmctx", offset = 0, readonly = true }
;;!
;;! [globals.heap_bound]
;;! type = "i64"
;;! load = { base = "vmctx", offset = 8, readonly = true }
;;!
;;! [[heaps]]
;;! base = "heap_base"
;;! min_size = 0x10000
;;! offset_guard_size = 0xffffffff
;;! index_type = "i32"
;;! style = { kind = "dynamic", bound = "heap_bound" }

;; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;; !!! GENERATED BY 'make-load-store-tests.sh' DO NOT EDIT !!!
;; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

(module
  (memory i32 1)

  (func (export "do_store") (param i32 i32)
    local.get 0
    local.get 1
    i32.store8 offset=0xffff0000)

  (func (export "do_load") (param i32) (result i32)
    local.get 0
    i32.load8_u offset=0xffff0000))

;; function u0:0:
;; block0:
;;   mov w11, w0
;;   ldr x12, [x2, #8]
;;   ldr x13, [x2]
;;   add x13, x13, x0, UXTW
;;   movz x14, #65535, LSL #16
;;   add x13, x13, x14
;;   movz x14, #0
;;   subs xzr, x11, x12
;;   csel x12, x14, x13, hi
;;   csdb
;;   strb w1, [x12]
;;   b label1
;; block1:
;;   ret
;;
;; function u0:1:
;; block0:
;;   mov w11, w0
;;   ldr x12, [x1, #8]
;;   ldr x13, [x1]
;;   add x13, x13, x0, UXTW
;;   movz x14, #65535, LSL #16
;;   add x13, x13, x14
;;   movz x14, #0
;;   subs xzr, x11, x12
;;   csel x12, x14, x13, hi
;;   csdb
;;   ldrb w0, [x12]
;;   b label1
;; block1:
;;   ret