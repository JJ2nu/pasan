; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint09.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint09.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { i32* }
%"struct.std::default_delete" = type { i8 }
%"struct.std::_Tuple_impl.0" = type { i8 }
%"struct.std::_Head_base" = type { i8 }

$_ZSt11make_uniqueIiJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_ = comdat any

$_ZNKSt10unique_ptrIiSt14default_deleteIiEEdeEv = comdat any

$_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev = comdat any

$_ZNSt10unique_ptrIiSt14default_deleteIiEEC2IS1_vEEPi = comdat any

$_ZNSt15__uniq_ptr_dataIiSt14default_deleteIiELb1ELb1EECI2St15__uniq_ptr_implIiS1_EEPi = comdat any

$__clang_call_terminate = comdat any

$_ZNSt15__uniq_ptr_implIiSt14default_deleteIiEEC2EPi = comdat any

$_ZNSt5tupleIJPiSt14default_deleteIiEEEC2ILb1ELb1EEEv = comdat any

$_ZNSt15__uniq_ptr_implIiSt14default_deleteIiEE6_M_ptrEv = comdat any

$_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIiEEEC2Ev = comdat any

$_ZNSt11_Tuple_implILm1EJSt14default_deleteIiEEEC2Ev = comdat any

$_ZNSt10_Head_baseILm0EPiLb0EEC2Ev = comdat any

$_ZNSt10_Head_baseILm1ESt14default_deleteIiELb1EEC2Ev = comdat any

$_ZSt3getILm0EJPiSt14default_deleteIiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS7_ = comdat any

$_ZSt12__get_helperILm0EPiJSt14default_deleteIiEEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIiEEE7_M_headERS3_ = comdat any

$_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERS1_ = comdat any

$_ZNSt10unique_ptrIiSt14default_deleteIiEE11get_deleterEv = comdat any

$_ZNKSt14default_deleteIiEclEPi = comdat any

$_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_ = comdat any

$_ZNSt15__uniq_ptr_implIiSt14default_deleteIiEE10_M_deleterEv = comdat any

$_ZSt3getILm1EJPiSt14default_deleteIiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS7_ = comdat any

$_ZSt12__get_helperILm1ESt14default_deleteIiEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm1EJSt14default_deleteIiEEE7_M_headERS2_ = comdat any

$_ZNSt10_Head_baseILm1ESt14default_deleteIiELb1EE7_M_headERS2_ = comdat any

$_ZNKSt10unique_ptrIiSt14default_deleteIiEE3getEv = comdat any

$_ZNKSt15__uniq_ptr_implIiSt14default_deleteIiEE6_M_ptrEv = comdat any

$_ZSt3getILm0EJPiSt14default_deleteIiEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS7_ = comdat any

$_ZSt12__get_helperILm0EPiJSt14default_deleteIiEEERKT0_RKSt11_Tuple_implIXT_EJS3_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIiEEE7_M_headERKS3_ = comdat any

$_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERKS1_ = comdat any

@.str = private unnamed_addr constant [11 x i8] c"psr.source\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [66 x i8] c"/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint09.cpp\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [9 x i8] c"psr.sink\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (i32 ()* @_Z6sourcev to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i32 5, i8* null }], section "llvm.metadata"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z6sourcev() #0 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z4sinki(i32 noundef %0) #0 {
entry:
  %.addr = alloca i32, align 4
  store i32 %0, i32* %.addr, align 4
  %.addr1 = bitcast i32* %.addr to i8*
  call void @llvm.var.annotation(i8* %.addr1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i32 6, i8* null)
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %mem = alloca %"class.std::unique_ptr", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @_ZSt11make_uniqueIiJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_(%"class.std::unique_ptr"* sret(%"class.std::unique_ptr") align 8 %mem)
  %call = call noundef i32 @_Z6sourcev()
  %call1 = invoke noundef nonnull align 4 dereferenceable(4) i32* @_ZNKSt10unique_ptrIiSt14default_deleteIiEEdeEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %mem)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store i32 %call, i32* %call1, align 4
  %call2 = call i32 @rand() #10
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  %call4 = invoke noundef nonnull align 4 dereferenceable(4) i32* @_ZNKSt10unique_ptrIiSt14default_deleteIiEEdeEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %mem)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %if.then
  store i32 42, i32* %call4, align 4
  br label %if.end

lpad:                                             ; preds = %if.end, %if.then, %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  call void @_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %mem) #10
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont3, %invoke.cont
  %call6 = invoke noundef nonnull align 4 dereferenceable(4) i32* @_ZNKSt10unique_ptrIiSt14default_deleteIiEEdeEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %mem)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %if.end
  %3 = load i32, i32* %call6, align 4
  call void @_Z4sinki(i32 noundef %3)
  call void @_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %mem) #10
  %4 = load i32, i32* %retval, align 4
  ret i32 %4

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt11make_uniqueIiJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_(%"class.std::unique_ptr"* noalias sret(%"class.std::unique_ptr") align 8 %agg.result) #3 comdat {
entry:
  %result.ptr = alloca i8*, align 8
  %0 = bitcast %"class.std::unique_ptr"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 4) #11
  %1 = bitcast i8* %call to i32*
  store i32 0, i32* %1, align 4
  call void @_ZNSt10unique_ptrIiSt14default_deleteIiEEC2IS1_vEEPi(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %agg.result, i32* noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) i32* @_ZNKSt10unique_ptrIiSt14default_deleteIiEEdeEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call noundef i32* @_ZNKSt10unique_ptrIiSt14default_deleteIiEE3getEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this1) #10
  ret i32* %call
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %__ptr = alloca i32**, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t to %"class.std::__uniq_ptr_impl"*
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt15__uniq_ptr_implIiSt14default_deleteIiEE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0)
  store i32** %call, i32*** %__ptr, align 8
  %1 = load i32**, i32*** %__ptr, align 8
  %2 = load i32*, i32** %1, align 8
  %cmp = icmp ne i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10unique_ptrIiSt14default_deleteIiEE11get_deleterEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this1) #10
  %3 = load i32**, i32*** %__ptr, align 8
  %call3 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_(i32** noundef nonnull align 8 dereferenceable(8) %3) #10
  %4 = load i32*, i32** %call3, align 8
  invoke void @_ZNKSt14default_deleteIiEclEPi(%"struct.std::default_delete"* noundef nonnull align 1 dereferenceable(1) %call2, i32* noundef %4)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %5 = load i32**, i32*** %__ptr, align 8
  store i32* null, i32** %5, align 8
  ret void

terminate.lpad:                                   ; preds = %if.then
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #12
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIiSt14default_deleteIiEEC2IS1_vEEPi(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this, i32* noundef %__p) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %__p.addr = alloca i32*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %__p.addr, align 8
  invoke void @_ZNSt15__uniq_ptr_dataIiSt14default_deleteIiELb1ELb1EECI2St15__uniq_ptr_implIiS1_EEPi(%"struct.std::__uniq_ptr_data"* noundef nonnull align 8 dereferenceable(8) %_M_t, i32* noundef %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #12
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_dataIiSt14default_deleteIiELb1ELb1EECI2St15__uniq_ptr_implIiS1_EEPi(%"struct.std::__uniq_ptr_data"* noundef nonnull align 8 dereferenceable(8) %this, i32* noundef %0) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__uniq_ptr_data"*, align 8
  %.addr = alloca i32*, align 8
  store %"struct.std::__uniq_ptr_data"* %this, %"struct.std::__uniq_ptr_data"** %this.addr, align 8
  store i32* %0, i32** %.addr, align 8
  %this1 = load %"struct.std::__uniq_ptr_data"*, %"struct.std::__uniq_ptr_data"** %this.addr, align 8
  %1 = bitcast %"struct.std::__uniq_ptr_data"* %this1 to %"class.std::__uniq_ptr_impl"*
  %2 = load i32*, i32** %.addr, align 8
  call void @_ZNSt15__uniq_ptr_implIiSt14default_deleteIiEEC2EPi(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %1, i32* noundef %2)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #8 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #10
  call void @_ZSt9terminatev() #12
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_implIiSt14default_deleteIiEEC2EPi(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this, i32* noundef %__p) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  %__p.addr = alloca i32*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0
  call void @_ZNSt5tupleIJPiSt14default_deleteIiEEEC2ILb1ELb1EEEv(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %_M_t) #10
  %0 = load i32*, i32** %__p.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt15__uniq_ptr_implIiSt14default_deleteIiEE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this1)
  store i32* %0, i32** %call, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJPiSt14default_deleteIiEEEC2ILb1ELb1EEEv(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %this, %"class.std::tuple"** %this.addr, align 8
  %this1 = load %"class.std::tuple"*, %"class.std::tuple"** %this.addr, align 8
  %0 = bitcast %"class.std::tuple"* %this1 to %"struct.std::_Tuple_impl"*
  invoke void @_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIiEEEC2Ev(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt15__uniq_ptr_implIiSt14default_deleteIiEE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt3getILm0EJPiSt14default_deleteIiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS7_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %_M_t) #10
  ret i32** %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIiEEEC2Ev(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Tuple_impl.0"*
  call void @_ZNSt11_Tuple_implILm1EJSt14default_deleteIiEEEC2Ev(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %0)
  %1 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Head_base.1"*
  call void @_ZNSt10_Head_baseILm0EPiLb0EEC2Ev(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm1EJSt14default_deleteIiEEEC2Ev(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %this, %"struct.std::_Tuple_impl.0"** %this.addr, align 8
  %this1 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.0"* %this1 to %"struct.std::_Head_base"*
  call void @_ZNSt10_Head_baseILm1ESt14default_deleteIiELb1EEC2Ev(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0EPiLb0EEC2Ev(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.1"*, align 8
  store %"struct.std::_Head_base.1"* %this, %"struct.std::_Head_base.1"** %this.addr, align 8
  %this1 = load %"struct.std::_Head_base.1"*, %"struct.std::_Head_base.1"** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.1", %"struct.std::_Head_base.1"* %this1, i32 0, i32 0
  store i32* null, i32** %_M_head_impl, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm1ESt14default_deleteIiELb1EEC2Ev(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %this, %"struct.std::_Head_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %this.addr, align 8
  %_M_head_impl = bitcast %"struct.std::_Head_base"* %this1 to %"struct.std::default_delete"*
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZSt3getILm0EJPiSt14default_deleteIiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS7_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl"*
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt12__get_helperILm0EPiJSt14default_deleteIiEEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %1) #10
  ret i32** %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZSt12__get_helperILm0EPiJSt14default_deleteIiEEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIiEEE7_M_headERS3_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0) #10
  ret i32** %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIiEEE7_M_headERS3_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %__t) #0 comdat align 2 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %1 = bitcast %"struct.std::_Tuple_impl"* %0 to %"struct.std::_Head_base.1"*
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERS1_(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %1) #10
  ret i32** %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERS1_(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %__b) #0 comdat align 2 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base.1"*, align 8
  store %"struct.std::_Head_base.1"* %__b, %"struct.std::_Head_base.1"** %__b.addr, align 8
  %0 = load %"struct.std::_Head_base.1"*, %"struct.std::_Head_base.1"** %__b.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.1", %"struct.std::_Head_base.1"* %0, i32 0, i32 0
  ret i32** %_M_head_impl
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10unique_ptrIiSt14default_deleteIiEE11get_deleterEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t to %"class.std::__uniq_ptr_impl"*
  %call = invoke noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt15__uniq_ptr_implIiSt14default_deleteIiEE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret %"struct.std::default_delete"* %call

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNKSt14default_deleteIiEclEPi(%"struct.std::default_delete"* noundef nonnull align 1 dereferenceable(1) %this, i32* noundef %__ptr) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::default_delete"*, align 8
  %__ptr.addr = alloca i32*, align 8
  store %"struct.std::default_delete"* %this, %"struct.std::default_delete"** %this.addr, align 8
  store i32* %__ptr, i32** %__ptr.addr, align 8
  %this1 = load %"struct.std::default_delete"*, %"struct.std::default_delete"** %this.addr, align 8
  %0 = load i32*, i32** %__ptr.addr, align 8
  %isnull = icmp eq i32* %0, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast i32* %0 to i8*
  call void @_ZdlPv(i8* noundef %1) #13
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_(i32** noundef nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca i32**, align 8
  store i32** %__t, i32*** %__t.addr, align 8
  %0 = load i32**, i32*** %__t.addr, align 8
  ret i32** %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt15__uniq_ptr_implIiSt14default_deleteIiEE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt3getILm1EJPiSt14default_deleteIiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS7_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %_M_t) #10
  ret %"struct.std::default_delete"* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt3getILm1EJPiSt14default_deleteIiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS7_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl.0"*
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt12__get_helperILm1ESt14default_deleteIiEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %1) #10
  ret %"struct.std::default_delete"* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt12__get_helperILm1ESt14default_deleteIiEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %__t, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt11_Tuple_implILm1EJSt14default_deleteIiEEE7_M_headERS2_(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %0) #10
  ret %"struct.std::default_delete"* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt11_Tuple_implILm1EJSt14default_deleteIiEEE7_M_headERS2_(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %__t) #0 comdat align 2 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %__t, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8
  %1 = bitcast %"struct.std::_Tuple_impl.0"* %0 to %"struct.std::_Head_base"*
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10_Head_baseILm1ESt14default_deleteIiELb1EE7_M_headERS2_(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %1) #10
  ret %"struct.std::default_delete"* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10_Head_baseILm1ESt14default_deleteIiELb1EE7_M_headERS2_(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %__b) #0 comdat align 2 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %__b, %"struct.std::_Head_base"** %__b.addr, align 8
  %0 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %__b.addr, align 8
  %_M_head_impl = bitcast %"struct.std::_Head_base"* %0 to %"struct.std::default_delete"*
  ret %"struct.std::default_delete"* %_M_head_impl
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32* @_ZNKSt10unique_ptrIiSt14default_deleteIiEE3getEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t to %"class.std::__uniq_ptr_impl"*
  %call = invoke noundef i32* @_ZNKSt15__uniq_ptr_implIiSt14default_deleteIiEE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret i32* %call

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32* @_ZNKSt15__uniq_ptr_implIiSt14default_deleteIiEE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt3getILm0EJPiSt14default_deleteIiEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS7_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %_M_t) #10
  %0 = load i32*, i32** %call, align 8
  ret i32* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZSt3getILm0EJPiSt14default_deleteIiEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS7_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl"*
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt12__get_helperILm0EPiJSt14default_deleteIiEEERKT0_RKSt11_Tuple_implIXT_EJS3_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %1) #10
  ret i32** %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZSt12__get_helperILm0EPiJSt14default_deleteIiEEERKT0_RKSt11_Tuple_implIXT_EJS3_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIiEEE7_M_headERKS3_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0) #10
  ret i32** %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt11_Tuple_implILm0EJPiSt14default_deleteIiEEE7_M_headERKS3_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %__t) #0 comdat align 2 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %1 = bitcast %"struct.std::_Tuple_impl"* %0 to %"struct.std::_Head_base.1"*
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERKS1_(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %1) #10
  ret i32** %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt10_Head_baseILm0EPiLb0EE7_M_headERKS1_(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %__b) #0 comdat align 2 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base.1"*, align 8
  store %"struct.std::_Head_base.1"* %__b, %"struct.std::_Head_base.1"** %__b.addr, align 8
  %0 = load %"struct.std::_Head_base.1"*, %"struct.std::_Head_base.1"** %__b.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.1", %"struct.std::_Head_base.1"* %0, i32 0, i32 0
  ret i32** %_M_head_impl
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
