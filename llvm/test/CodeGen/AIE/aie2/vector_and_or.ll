; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
;
; This file is licensed under the Apache License v2.0 with LLVM Exceptions.
; See https://llvm.org/LICENSE.txt for license information.
; SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
;
; (c) Copyright 2023-2024 Advanced Micro Devices, Inc. or its affiliates
; RUN: llc -O2 -mtriple=aie2 %s -o - | FileCheck %s

define dso_local noundef <8 x i32> @_Z8test_andDv8_iS_(<8 x i32> noundef %a, <8 x i32> noundef %b) local_unnamed_addr #0 {
; CHECK-LABEL: _Z8test_andDv8_iS_:
; CHECK:         .p2align 4
; CHECK-NEXT:  // %bb.0: // %entry
; CHECK-NEXT:    ret lr
; CHECK-NEXT:    nop // Delay Slot 5
; CHECK-NEXT:    nop // Delay Slot 4
; CHECK-NEXT:    nop // Delay Slot 3
; CHECK-NEXT:    vband x0, x4, x2 // Delay Slot 2
; CHECK-NEXT:    nop // Delay Slot 1
entry:
  %and = and <8 x i32> %b, %a
  ret <8 x i32> %and
}

define dso_local noundef <16 x i32> @_Z8test_andDv16_iS_(<16 x i32> noundef %a, <16 x i32> noundef %b) local_unnamed_addr #0 {
; CHECK-LABEL: _Z8test_andDv16_iS_:
; CHECK:         .p2align 4
; CHECK-NEXT:  // %bb.0: // %entry
; CHECK-NEXT:    ret lr
; CHECK-NEXT:    nop // Delay Slot 5
; CHECK-NEXT:    nop // Delay Slot 4
; CHECK-NEXT:    nop // Delay Slot 3
; CHECK-NEXT:    vband x0, x4, x2 // Delay Slot 2
; CHECK-NEXT:    nop // Delay Slot 1
entry:
  %and = and <16 x i32> %b, %a
  ret <16 x i32> %and
}

define dso_local noundef <32 x i32> @_Z8test_andDv32_iS_(<32 x i32> noundef %a, <32 x i32> noundef %b) local_unnamed_addr #0 {
; CHECK-LABEL: _Z8test_andDv32_iS_:
; CHECK:         .p2align 4
; CHECK-NEXT:  // %bb.0: // %entry
; CHECK-NEXT:    nopb ; nopa ; nops ; ret lr ; nopm ; nopv
; CHECK-NEXT:    nopx // Delay Slot 5
; CHECK-NEXT:    nop // Delay Slot 4
; CHECK-NEXT:    vband x5, x9, x7 // Delay Slot 3
; CHECK-NEXT:    vband x4, x8, x6 // Delay Slot 2
; CHECK-NEXT:    nop // Delay Slot 1
entry:
  %and = and <32 x i32> %b, %a
  ret <32 x i32> %and
}

define dso_local noundef <8 x i32> @_Z7test_orDv8_iS_(<8 x i32> noundef %a, <8 x i32> noundef %b) local_unnamed_addr #0 {
; CHECK-LABEL: _Z7test_orDv8_iS_:
; CHECK:         .p2align 4
; CHECK-NEXT:  // %bb.0: // %entry
; CHECK-NEXT:    ret lr
; CHECK-NEXT:    nop // Delay Slot 5
; CHECK-NEXT:    nop // Delay Slot 4
; CHECK-NEXT:    nop // Delay Slot 3
; CHECK-NEXT:    vbor x0, x4, x2 // Delay Slot 2
; CHECK-NEXT:    nop // Delay Slot 1
entry:
  %or = or <8 x i32> %b, %a
  ret <8 x i32> %or
}

define dso_local noundef <16 x i32> @_Z7test_orDv16_iS_(<16 x i32> noundef %a, <16 x i32> noundef %b) local_unnamed_addr #0 {
; CHECK-LABEL: _Z7test_orDv16_iS_:
; CHECK:         .p2align 4
; CHECK-NEXT:  // %bb.0: // %entry
; CHECK-NEXT:    ret lr
; CHECK-NEXT:    nop // Delay Slot 5
; CHECK-NEXT:    nop // Delay Slot 4
; CHECK-NEXT:    nop // Delay Slot 3
; CHECK-NEXT:    vbor x0, x4, x2 // Delay Slot 2
; CHECK-NEXT:    nop // Delay Slot 1
entry:
  %or = or <16 x i32> %b, %a
  ret <16 x i32> %or
}

define dso_local noundef <32 x i32> @_Z7test_orDv32_iS_(<32 x i32> noundef %a, <32 x i32> noundef %b) local_unnamed_addr #0 {
; CHECK-LABEL: _Z7test_orDv32_iS_:
; CHECK:         .p2align 4
; CHECK-NEXT:  // %bb.0: // %entry
; CHECK-NEXT:    nopb ; nopa ; nops ; ret lr ; nopm ; nopv
; CHECK-NEXT:    nopx // Delay Slot 5
; CHECK-NEXT:    nop // Delay Slot 4
; CHECK-NEXT:    vbor x5, x9, x7 // Delay Slot 3
; CHECK-NEXT:    vbor x4, x8, x6 // Delay Slot 2
; CHECK-NEXT:    nop // Delay Slot 1
entry:
  %or = or <32 x i32> %b, %a
  ret <32 x i32> %or
}
