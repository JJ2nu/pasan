; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/special_member_functions_1.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/special_member_functions_1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%class.MyClass = type { i8 }

$_ZN7MyClassC2Ev = comdat any

$_ZN7MyClassC2ERKS_ = comdat any

$_ZN7MyClassaSERKS_ = comdat any

$_ZN7MyClassD2Ev = comdat any

$_ZSt4moveIR7MyClassEONSt16remove_referenceIT_E4typeEOS3_ = comdat any

$_ZN7MyClassC2EOS_ = comdat any

$_ZN7MyClassaSEOS_ = comdat any

$__clang_call_terminate = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [6 x i8] c"ctor\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"copy\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"cpy assign\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dtor\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"move\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"mv assign\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_special_member_functions_1.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %c = alloca %class.MyClass, align 1
  %d = alloca %class.MyClass, align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %e = alloca %class.MyClass, align 1
  %f = alloca %class.MyClass, align 1
  %agg.tmp.ensured = alloca %class.MyClass, align 1
  %g = alloca %class.MyClass, align 1
  store i32 0, i32* %retval, align 4
  call void @_ZN7MyClassC2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %c)
  invoke void @_ZN7MyClassC2ERKS_(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %d, %class.MyClass* noundef nonnull align 1 dereferenceable(1) %c)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN7MyClassC2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %e)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  invoke void @_ZN7MyClassC2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %f)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont2
  invoke void @_ZN7MyClassaSERKS_(%class.MyClass* sret(%class.MyClass) align 1 %agg.tmp.ensured, %class.MyClass* noundef nonnull align 1 dereferenceable(1) %e, %class.MyClass* noundef nonnull align 1 dereferenceable(1) %c)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont4
  call void @_ZN7MyClassD2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %agg.tmp.ensured) #3
  %call = call noundef nonnull align 1 dereferenceable(1) %class.MyClass* @_ZSt4moveIR7MyClassEONSt16remove_referenceIT_E4typeEOS3_(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %e) #3
  invoke void @_ZN7MyClassC2EOS_(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %g, %class.MyClass* noundef nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont7 unwind label %lpad5

invoke.cont7:                                     ; preds = %invoke.cont6
  %call8 = call noundef nonnull align 1 dereferenceable(1) %class.MyClass* @_ZSt4moveIR7MyClassEONSt16remove_referenceIT_E4typeEOS3_(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %d) #3
  %call11 = invoke noundef nonnull align 1 dereferenceable(1) %class.MyClass* @_ZN7MyClassaSEOS_(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %f, %class.MyClass* noundef nonnull align 1 dereferenceable(1) %call8)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  store i32 0, i32* %retval, align 4
  call void @_ZN7MyClassD2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %g) #3
  call void @_ZN7MyClassD2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %f) #3
  call void @_ZN7MyClassD2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %e) #3
  call void @_ZN7MyClassD2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %d) #3
  call void @_ZN7MyClassD2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %c) #3
  %0 = load i32, i32* %retval, align 4
  ret i32 %0

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  br label %ehcleanup14

lpad1:                                            ; preds = %invoke.cont
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  br label %ehcleanup13

lpad3:                                            ; preds = %invoke.cont2
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot, align 4
  br label %ehcleanup12

lpad5:                                            ; preds = %invoke.cont6, %invoke.cont4
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %exn.slot, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont7
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %exn.slot, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %ehselector.slot, align 4
  call void @_ZN7MyClassD2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %g) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad5
  call void @_ZN7MyClassD2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %f) #3
  br label %ehcleanup12

ehcleanup12:                                      ; preds = %ehcleanup, %lpad3
  call void @_ZN7MyClassD2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %e) #3
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup12, %lpad1
  call void @_ZN7MyClassD2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %d) #3
  br label %ehcleanup14

ehcleanup14:                                      ; preds = %ehcleanup13, %lpad
  call void @_ZN7MyClassD2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %c) #3
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup14
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val15 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val15
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7MyClassC2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %class.MyClass*, align 8
  store %class.MyClass* %this, %class.MyClass** %this.addr, align 8
  %this1 = load %class.MyClass*, %class.MyClass** %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7MyClassC2ERKS_(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %this, %class.MyClass* noundef nonnull align 1 dereferenceable(1) %m) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %class.MyClass*, align 8
  %m.addr = alloca %class.MyClass*, align 8
  store %class.MyClass* %this, %class.MyClass** %this.addr, align 8
  store %class.MyClass* %m, %class.MyClass** %m.addr, align 8
  %this1 = load %class.MyClass*, %class.MyClass** %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7MyClassaSERKS_(%class.MyClass* noalias sret(%class.MyClass) align 1 %agg.result, %class.MyClass* noundef nonnull align 1 dereferenceable(1) %this, %class.MyClass* noundef nonnull align 1 dereferenceable(1) %m) #6 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %class.MyClass*, align 8
  %m.addr = alloca %class.MyClass*, align 8
  %0 = bitcast %class.MyClass* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %class.MyClass* %this, %class.MyClass** %this.addr, align 8
  store %class.MyClass* %m, %class.MyClass** %m.addr, align 8
  %this1 = load %class.MyClass*, %class.MyClass** %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  call void @_ZN7MyClassC2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %agg.result)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7MyClassD2Ev(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.MyClass*, align 8
  store %class.MyClass* %this, %class.MyClass** %this.addr, align 8
  %this1 = load %class.MyClass*, %class.MyClass** %this.addr, align 8
  %call = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  call void @__clang_call_terminate(i8* %1) #10
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %class.MyClass* @_ZSt4moveIR7MyClassEONSt16remove_referenceIT_E4typeEOS3_(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %__t) #8 comdat {
entry:
  %__t.addr = alloca %class.MyClass*, align 8
  store %class.MyClass* %__t, %class.MyClass** %__t.addr, align 8
  %0 = load %class.MyClass*, %class.MyClass** %__t.addr, align 8
  ret %class.MyClass* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7MyClassC2EOS_(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %this, %class.MyClass* noundef nonnull align 1 dereferenceable(1) %m) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %class.MyClass*, align 8
  %m.addr = alloca %class.MyClass*, align 8
  store %class.MyClass* %this, %class.MyClass** %this.addr, align 8
  store %class.MyClass* %m, %class.MyClass** %m.addr, align 8
  %this1 = load %class.MyClass*, %class.MyClass** %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %class.MyClass* @_ZN7MyClassaSEOS_(%class.MyClass* noundef nonnull align 1 dereferenceable(1) %this, %class.MyClass* noundef nonnull align 1 dereferenceable(1) %m) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.MyClass*, align 8
  %m.addr = alloca %class.MyClass*, align 8
  store %class.MyClass* %this, %class.MyClass** %this.addr, align 8
  store %class.MyClass* %m, %class.MyClass** %m.addr, align 8
  %this1 = load %class.MyClass*, %class.MyClass** %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %0 = load %class.MyClass*, %class.MyClass** %m.addr, align 8
  ret %class.MyClass* %0
}

declare dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #1

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #9 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #10
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_special_member_functions_1.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
