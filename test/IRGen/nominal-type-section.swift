// RUN: %swift -target x86_64-apple-macosx10.10 -emit-ir -parse-stdlib -primary-file %s -module-name main -o - | FileCheck %s -check-prefix CHECK-MACHO
// RUN: %swift -target x86_64-unknown-linux-gnu -emit-ir -parse-stdlib -primary-file %s -module-name main -o - | FileCheck %s -check-prefix CHECK-ELF
// RUN: %swift -target x86_64-unknown-windows-itanium -emit-ir -parse-stdlib -primary-file %s -module-name main -o - | FileCheck %s -check-prefix CHECK-COFF

// CHECK-MACHO: @_TMnV4main1s = constant {{.*}}, section "__TEXT,__const"
// CHECK-ELF: @_TMnV4main1s = {{.*}}constant {{.*}}, section ".rodata"
// CHECK-COFF: @_TMnV4main1s = {{.*}}constant {{.*}}, section ".rdata"

public struct s {
}

