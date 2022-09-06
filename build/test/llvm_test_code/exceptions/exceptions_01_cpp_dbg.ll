; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/exceptions/exceptions_01.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/exceptions/exceptions_01.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ZTIi = external dso_local constant i8*

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z3foov() #0 !dbg !8 {
entry:
  %x = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 42, i32* %x, align 4, !dbg !15
  %call = call i32 @rand(), !dbg !16
  %tobool = icmp ne i32 %call, 0, !dbg !16
  br i1 %tobool, label %if.then, label %if.else, !dbg !18

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %x, align 4, !dbg !19
  %add = add nsw i32 %0, 4, !dbg !19
  store i32 %add, i32* %x, align 4, !dbg !19
  br label %if.end, !dbg !21

if.else:                                          ; preds = %entry
  %exception = call i8* @__cxa_allocate_exception(i64 4) #4, !dbg !22
  %1 = bitcast i8* %exception to i32*, !dbg !22
  store i32 2353782, i32* %1, align 16, !dbg !22
  call void @__cxa_throw(i8* %exception, i8* bitcast (i8** @_ZTIi to i8*), i8* null) #5, !dbg !22
  unreachable, !dbg !22

if.end:                                           ; preds = %if.then
  %2 = load i32, i32* %x, align 4, !dbg !24
  ret i32 %2, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @rand() #2

declare dso_local i8* @__cxa_allocate_exception(i64)

declare dso_local void @__cxa_throw(i8*, i8*, i8*)

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !26 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 3, i32* %a, align 4, !dbg !28
  %call = invoke noundef i32 @_Z3foov()
          to label %invoke.cont unwind label %lpad, !dbg !29

invoke.cont:                                      ; preds = %entry
  store i32 %call, i32* %a, align 4, !dbg !31
  br label %try.cont, !dbg !32

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null, !dbg !33
  %1 = extractvalue { i8*, i32 } %0, 0, !dbg !33
  store i8* %1, i8** %exn.slot, align 8, !dbg !33
  %2 = extractvalue { i8*, i32 } %0, 1, !dbg !33
  store i32 %2, i32* %ehselector.slot, align 4, !dbg !33
  br label %catch, !dbg !33

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !32
  %3 = call i8* @__cxa_begin_catch(i8* %exn) #4, !dbg !32
  store i32 -1, i32* %a, align 4, !dbg !34
  call void @__cxa_end_catch(), !dbg !36
  br label %try.cont, !dbg !36

try.cont:                                         ; preds = %catch, %invoke.cont
  %4 = load i32, i32* %a, align 4, !dbg !37
  ret i32 %4, !dbg !38
}

declare dso_local i32 @__gxx_personality_v0(...)

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @__cxa_end_catch()

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/exceptions/exceptions_01.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/exceptions", checksumkind: CSK_MD5, checksum: "23f08d8f6c5b8a423dbce298be3d7e4d")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", linkageName: "_Z3foov", scope: !9, file: !9, line: 4, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/exceptions/exceptions_01.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "23f08d8f6c5b8a423dbce298be3d7e4d")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 5, type: !12)
!15 = !DILocation(line: 5, column: 7, scope: !8)
!16 = !DILocation(line: 6, column: 7, scope: !17)
!17 = distinct !DILexicalBlock(scope: !8, file: !9, line: 6, column: 7)
!18 = !DILocation(line: 6, column: 7, scope: !8)
!19 = !DILocation(line: 7, column: 7, scope: !20)
!20 = distinct !DILexicalBlock(scope: !17, file: !9, line: 6, column: 15)
!21 = !DILocation(line: 8, column: 3, scope: !20)
!22 = !DILocation(line: 9, column: 5, scope: !23)
!23 = distinct !DILexicalBlock(scope: !17, file: !9, line: 8, column: 10)
!24 = !DILocation(line: 12, column: 10, scope: !8)
!25 = !DILocation(line: 12, column: 3, scope: !8)
!26 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 15, type: !10, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!27 = !DILocalVariable(name: "a", scope: !26, file: !9, line: 16, type: !12)
!28 = !DILocation(line: 16, column: 7, scope: !26)
!29 = !DILocation(line: 18, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !9, line: 17, column: 7)
!31 = !DILocation(line: 18, column: 7, scope: !30)
!32 = !DILocation(line: 19, column: 3, scope: !30)
!33 = !DILocation(line: 23, column: 1, scope: !30)
!34 = !DILocation(line: 20, column: 7, scope: !35)
!35 = distinct !DILexicalBlock(scope: !26, file: !9, line: 19, column: 17)
!36 = !DILocation(line: 21, column: 3, scope: !35)
!37 = !DILocation(line: 22, column: 10, scope: !26)
!38 = !DILocation(line: 22, column: 3, scope: !26)
