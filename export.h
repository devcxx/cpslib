#ifndef CPSLIB_EXPORT_H
#define CPSLIB_EXPORT_H

#if defined(_MSC_VER) || defined(__CYGWIN__) || defined(__MINGW32__) || defined(__BCPLUSPLUS__) || defined(__MWERKS__)
#if defined(CPSLIB_LIBRARY_STATIC)
#define CPSLIB_EXPORT
#elif defined(CPSLIB_LIBRARY)
#define CPSLIB_EXPORT __declspec(dllexport)
#else
#define CPSLIB_EXPORT __declspec(dllimport)
#endif
#else
#define CPSLIB_EXPORT
#endif

#endif // CPSLIB_EXPORT_H
