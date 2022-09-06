; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/basic_02.c'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/basic_02.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i32, i32, double }

@.str = private unnamed_addr constant [11 x i8] c"psr.source\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [80 x i8] c"/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/basic_02.c\00", section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @modX(%struct.X* noundef %A) #0 !dbg !8 {
entry:
  %A.addr = alloca %struct.X*, align 8
  store %struct.X* %A, %struct.X** %A.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.X** %A.addr, metadata !21, metadata !DIExpression()), !dbg !22
  %0 = load %struct.X*, %struct.X** %A.addr, align 8, !dbg !23
  %A1 = getelementptr inbounds %struct.X, %struct.X* %0, i32 0, i32 0, !dbg !24
  store i32 42, i32* %A1, align 8, !dbg !25
  %1 = load %struct.X*, %struct.X** %A.addr, align 8, !dbg !26
  %B = getelementptr inbounds %struct.X, %struct.X* %1, i32 0, i32 1, !dbg !27
  %2 = bitcast i32* %B to i8*, !dbg !27
  %3 = call i8* @llvm.ptr.annotation.p0i8(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i32 0, i32 0), i32 4, i8* null), !dbg !27
  %4 = bitcast i8* %3 to i32*, !dbg !27
  store i32 13, i32* %4, align 4, !dbg !28
  %5 = load %struct.X*, %struct.X** %A.addr, align 8, !dbg !29
  %C = getelementptr inbounds %struct.X, %struct.X* %5, i32 0, i32 2, !dbg !30
  store double 1.230000e+00, double* %C, align 8, !dbg !31
  ret void, !dbg !32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare i8* @llvm.ptr.annotation.p0i8(i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !33 {
entry:
  %retval = alloca i32, align 4
  %A = alloca %struct.X, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %struct.X* %A, metadata !36, metadata !DIExpression()), !dbg !37
  call void @modX(%struct.X* noundef %A), !dbg !38
  %B = getelementptr inbounds %struct.X, %struct.X* %A, i32 0, i32 1, !dbg !39
  %0 = bitcast i32* %B to i8*, !dbg !39
  %1 = call i8* @llvm.ptr.annotation.p0i8(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i32 0, i32 0), i32 4, i8* null), !dbg !39
  %2 = bitcast i8* %1 to i32*, !dbg !39
  %3 = load i32, i32* %2, align 4, !dbg !39
  ret i32 %3, !dbg !40
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { inaccessiblememonly nofree nosync nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/basic_02.c", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/TaintConfig/AttrConfig", checksumkind: CSK_MD5, checksum: "63f14a252e53ffe6faa005642b6d6589")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "modX", scope: !9, file: !9, line: 8, type: !10, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!9 = !DIFile(filename: "test/llvm_test_code/TaintConfig/AttrConfig/basic_02.c", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "63f14a252e53ffe6faa005642b6d6589")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X", file: !9, line: 2, size: 128, elements: !14)
!14 = !{!15, !17, !18}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !13, file: !9, line: 3, baseType: !16, size: 32)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !13, file: !9, line: 4, baseType: !16, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !13, file: !9, line: 5, baseType: !19, size: 64, offset: 64)
!19 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!20 = !{}
!21 = !DILocalVariable(name: "A", arg: 1, scope: !8, file: !9, line: 8, type: !12)
!22 = !DILocation(line: 8, column: 21, scope: !8)
!23 = !DILocation(line: 9, column: 3, scope: !8)
!24 = !DILocation(line: 9, column: 6, scope: !8)
!25 = !DILocation(line: 9, column: 8, scope: !8)
!26 = !DILocation(line: 10, column: 3, scope: !8)
!27 = !DILocation(line: 10, column: 6, scope: !8)
!28 = !DILocation(line: 10, column: 8, scope: !8)
!29 = !DILocation(line: 11, column: 3, scope: !8)
!30 = !DILocation(line: 11, column: 6, scope: !8)
!31 = !DILocation(line: 11, column: 8, scope: !8)
!32 = !DILocation(line: 12, column: 1, scope: !8)
!33 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 14, type: !34, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!34 = !DISubroutineType(types: !35)
!35 = !{!16}
!36 = !DILocalVariable(name: "A", scope: !33, file: !9, line: 15, type: !13)
!37 = !DILocation(line: 15, column: 12, scope: !33)
!38 = !DILocation(line: 16, column: 3, scope: !33)
!39 = !DILocation(line: 17, column: 12, scope: !33)
!40 = !DILocation(line: 17, column: 3, scope: !33)
