; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/vtable/scattered_vfunc_impl/child_1.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/vtable/scattered_vfunc_impl/child_1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child = type { %struct.base }
%struct.base = type { i32 (...)** }

@_ZTV5child = dso_local unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI5child to i8*), i8* bitcast (i32 (%struct.child*)* @_ZN5child3fooEv to i8*), i8* bitcast (i32 (%struct.child*)* @_ZN5child3barEv to i8*)] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS5child = dso_local constant [7 x i8] c"5child\00", align 1
@_ZTI4base = external dso_local constant i8*
@_ZTI5child = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_ZTS5child, i32 0, i32 0), i8* bitcast (i8** @_ZTI4base to i8*) }, align 8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_ZN5child3fooEv(%struct.child* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %struct.child*, align 8
  store %struct.child* %this, %struct.child** %this.addr, align 8
  %this1 = load %struct.child*, %struct.child** %this.addr, align 8
  ret i32 100
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_ZN5child5otherEv(%struct.child* noundef nonnull align 8 dereferenceable(8) %this) #0 align 2 {
entry:
  %this.addr = alloca %struct.child*, align 8
  store %struct.child* %this, %struct.child** %this.addr, align 8
  %this1 = load %struct.child*, %struct.child** %this.addr, align 8
  ret i32 300
}

declare dso_local noundef i32 @_ZN5child3barEv(%struct.child* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
