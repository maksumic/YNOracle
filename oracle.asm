; YES/NO Oracle (TRNG)
; Windows 64-Bit Assembly (MASM)
; by Sorn Maksumic (https://sorn.dev)
;
;               ;               ;               ;
                .code

rndval          proc
retry_rdseed:
                rdseed          rax             ; generate
                jnc             retry_rdseed    ; retry if buffer is empty
                and             rax, 1          ; mod 2
                ret
rndval          endp

                end
;               ;               ;               ;