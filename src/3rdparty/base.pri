SOURCE_DIR = $$PWD/pdfium/third_party

INCLUDEPATH += $$SOURCE_DIR

PRIVATE_HEADERS += \
$$SOURCE_DIR/base/allocator/partition_allocator/address_space_randomization.h \
$$SOURCE_DIR/base/allocator/partition_allocator/oom.h \
$$SOURCE_DIR/base/allocator/partition_allocator/oom_callback.h \
$$SOURCE_DIR/base/allocator/partition_allocator/page_allocator.h \
$$SOURCE_DIR/base/allocator/partition_allocator/page_allocator_constants.h \
$$SOURCE_DIR/base/allocator/partition_allocator/page_allocator_internal.h \
$$SOURCE_DIR/base/allocator/partition_allocator/page_allocator_internals_posix.h \
$$SOURCE_DIR/base/allocator/partition_allocator/page_allocator_internals_win.h \
$$SOURCE_DIR/base/allocator/partition_allocator/partition_alloc.h \
$$SOURCE_DIR/base/allocator/partition_allocator/partition_alloc_constants.h \
$$SOURCE_DIR/base/allocator/partition_allocator/partition_bucket.h \
$$SOURCE_DIR/base/allocator/partition_allocator/partition_oom.h \
$$SOURCE_DIR/base/allocator/partition_allocator/partition_cookie.h \
$$SOURCE_DIR/base/allocator/partition_allocator/partition_direct_map_extent.h \
$$SOURCE_DIR/base/allocator/partition_allocator/partition_freelist_entry.h \
$$SOURCE_DIR/base/allocator/partition_allocator/partition_page.h \
$$SOURCE_DIR/base/allocator/partition_allocator/partition_root_base.h \
$$SOURCE_DIR/base/allocator/partition_allocator/spin_lock.h \
$$SOURCE_DIR/base/base_export.h \
$$SOURCE_DIR/base/bits.h \
$$SOURCE_DIR/base/compiler_specific.h \
$$SOURCE_DIR/base/debug/alias.h \
$$SOURCE_DIR/base/logging.h \
$$SOURCE_DIR/base/numerics/safe_conversions.h \
$$SOURCE_DIR/base/numerics/safe_conversions_impl.h \
$$SOURCE_DIR/base/numerics/safe_math.h \
$$SOURCE_DIR/base/numerics/safe_math_impl.h \
$$SOURCE_DIR/base/optional.h \
$$SOURCE_DIR/base/span.h \
$$SOURCE_DIR/base/stl_util.h \
$$SOURCE_DIR/base/sys_byteorder.h \
$$SOURCE_DIR/base/template_util.h \
$$SOURCE_DIR/skia_shared/SkFloatToDecimal.h

SOURCES += \
$$SOURCE_DIR/base/allocator/partition_allocator/address_space_randomization.cc \
$$SOURCE_DIR/base/allocator/partition_allocator/oom_callback.cc \
$$SOURCE_DIR/base/allocator/partition_allocator/page_allocator.cc \
$$SOURCE_DIR/base/allocator/partition_allocator/partition_alloc.cc \
$$SOURCE_DIR/base/allocator/partition_allocator/partition_bucket.cc \
$$SOURCE_DIR/base/allocator/partition_allocator/partition_oom.cc \
$$SOURCE_DIR/base/allocator/partition_allocator/partition_page.cc \
$$SOURCE_DIR/base/allocator/partition_allocator/partition_root_base.cc \
$$SOURCE_DIR/base/allocator/partition_allocator/spin_lock.cc \
$$SOURCE_DIR/base/debug/alias.cc \
$$SOURCE_DIR/skia_shared/SkFloatToDecimal.cpp

