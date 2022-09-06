; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/vtable/scattered_vfunc_impl/main.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/vtable/scattered_vfunc_impl/main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nonvirtual = type { i32 }
%struct.base = type { i32 (...)** }
%struct.child = type { %struct.base }

$_ZN5childC2Ev = comdat any

$_ZN4baseC2Ev = comdat any

@_ZTV5child = external dso_local unnamed_addr constant { [4 x i8*] }, align 8
@_ZTV4base = external dso_local unnamed_addr constant { [4 x i8*] }, align 8

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca %struct.nonvirtual, align 4
  %c = alloca %struct.base*, align 8
  store i32 0, i32* %retval, align 4
  %i = getelementptr inbounds %struct.nonvirtual, %struct.nonvirtual* %n, i32 0, i32 0
  store i32 100, i32* %i, align 4
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 8) #4
  %0 = bitcast i8* %call to %struct.child*
  call void @_ZN5childC2Ev(%struct.child* noundef nonnull align 8 dereferenceable(8) %0) #5
  %1 = bitcast %struct.child* %0 to %struct.base*
  store %struct.base* %1, %struct.base** %c, align 8
  %2 = load %struct.base*, %struct.base** %c, align 8
  %3 = bitcast %struct.base* %2 to i32 (%struct.base*)***
  %vtable = load i32 (%struct.base*)**, i32 (%struct.base*)*** %3, align 8
  %vfn = getelementptr inbounds i32 (%struct.base*)*, i32 (%struct.base*)** %vtable, i64 0
  %4 = load i32 (%struct.base*)*, i32 (%struct.base*)** %vfn, align 8
  %call1 = call noundef i32 %4(%struct.base* noundef nonnull align 8 dereferenceable(8) %2)
  %5 = load %struct.base*, %struct.base** %c, align 8
  %isnull = icmp eq %struct.base* %5, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %6 = bitcast %struct.base* %5 to i8*
  call void @_ZdlPv(i8* noundef %6) #6
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret i32 0
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5childC2Ev(%struct.child* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.child*, align 8
  store %struct.child* %this, %struct.child** %this.addr, align 8
  %this1 = load %struct.child*, %struct.child** %this.addr, align 8
  %0 = bitcast %struct.child* %this1 to %struct.base*
  call void @_ZN4baseC2Ev(%struct.base* noundef nonnull align 8 dereferenceable(8) %0) #5
  %1 = bitcast %struct.child* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV5child, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4baseC2Ev(%struct.base* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.base*, align 8
  store %struct.base* %this, %struct.base** %this.addr, align 8
  %this1 = load %struct.base*, %struct.base** %this.addr, align 8
  %0 = bitcast %struct.base* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV4base, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { builtin allocsize(0) }
attributes #5 = { nounwind }
attributes #6 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
