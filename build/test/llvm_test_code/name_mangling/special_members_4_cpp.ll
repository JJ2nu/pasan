; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/name_mangling/special_members_4.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/name_mangling/special_members_4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"struct.C0C1C2C1::D1" = type { i8 }

$_ZN8C0C1C2C12D1C2Ev = comdat any

$_ZN8C0C1C2C12D1C2ERKS0_ = comdat any

$_ZSt4moveIRN8C0C1C2C12D1EEONSt16remove_referenceIT_E4typeEOS4_ = comdat any

$_ZN8C0C1C2C12D1C2EOS0_ = comdat any

$_ZN8C0C1C2C12D1D2Ev = comdat any

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z12C1C2C3D0D1D2v() #0 {
entry:
  ret void
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %argc, i8** noundef %argv) #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %d = alloca %"struct.C0C1C2C1::D1", align 1
  %d1 = alloca %"struct.C0C1C2C1::D1", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %d2 = alloca %"struct.C0C1C2C1::D1", align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @_Z12C1C2C3D0D1D2v()
  call void @_ZN8C0C1C2C12D1C2Ev(%"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %d)
  invoke void @_ZN8C0C1C2C12D1C2ERKS0_(%"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %d1, %"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %d)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.C0C1C2C1::D1"* @_ZSt4moveIRN8C0C1C2C12D1EEONSt16remove_referenceIT_E4typeEOS4_(%"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %d) #3
  invoke void @_ZN8C0C1C2C12D1C2EOS0_(%"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %d2, %"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  store i32 0, i32* %retval, align 4
  call void @_ZN8C0C1C2C12D1D2Ev(%"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %d2) #3
  call void @_ZN8C0C1C2C12D1D2Ev(%"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %d1) #3
  call void @_ZN8C0C1C2C12D1D2Ev(%"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %d) #3
  %0 = load i32, i32* %retval, align 4
  ret i32 %0

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad1:                                            ; preds = %invoke.cont
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  call void @_ZN8C0C1C2C12D1D2Ev(%"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %d1) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad1, %lpad
  call void @_ZN8C0C1C2C12D1D2Ev(%"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %d) #3
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN8C0C1C2C12D1C2Ev(%"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.C0C1C2C1::D1"*, align 8
  store %"struct.C0C1C2C1::D1"* %this, %"struct.C0C1C2C1::D1"** %this.addr, align 8
  %this1 = load %"struct.C0C1C2C1::D1"*, %"struct.C0C1C2C1::D1"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN8C0C1C2C12D1C2ERKS0_(%"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %this, %"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %d) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.C0C1C2C1::D1"*, align 8
  %d.addr = alloca %"struct.C0C1C2C1::D1"*, align 8
  store %"struct.C0C1C2C1::D1"* %this, %"struct.C0C1C2C1::D1"** %this.addr, align 8
  store %"struct.C0C1C2C1::D1"* %d, %"struct.C0C1C2C1::D1"** %d.addr, align 8
  %this1 = load %"struct.C0C1C2C1::D1"*, %"struct.C0C1C2C1::D1"** %this.addr, align 8
  ret void
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.C0C1C2C1::D1"* @_ZSt4moveIRN8C0C1C2C12D1EEONSt16remove_referenceIT_E4typeEOS4_(%"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"struct.C0C1C2C1::D1"*, align 8
  store %"struct.C0C1C2C1::D1"* %__t, %"struct.C0C1C2C1::D1"** %__t.addr, align 8
  %0 = load %"struct.C0C1C2C1::D1"*, %"struct.C0C1C2C1::D1"** %__t.addr, align 8
  ret %"struct.C0C1C2C1::D1"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN8C0C1C2C12D1C2EOS0_(%"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %this, %"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %d) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.C0C1C2C1::D1"*, align 8
  %d.addr = alloca %"struct.C0C1C2C1::D1"*, align 8
  store %"struct.C0C1C2C1::D1"* %this, %"struct.C0C1C2C1::D1"** %this.addr, align 8
  store %"struct.C0C1C2C1::D1"* %d, %"struct.C0C1C2C1::D1"** %d.addr, align 8
  %this1 = load %"struct.C0C1C2C1::D1"*, %"struct.C0C1C2C1::D1"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN8C0C1C2C12D1D2Ev(%"struct.C0C1C2C1::D1"* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.C0C1C2C1::D1"*, align 8
  store %"struct.C0C1C2C1::D1"* %this, %"struct.C0C1C2C1::D1"** %this.addr, align 8
  %this1 = load %"struct.C0C1C2C1::D1"*, %"struct.C0C1C2C1::D1"** %this.addr, align 8
  ret void
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
