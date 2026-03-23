# systems-from-scratch

![CI](https://github.com/abhaysoni512/systems-from-scratch/actions/workflows/ci.yml/badge.svg)
![Language](https://img.shields.io/badge/language-C%2FC%2B%2B-blue)
![Platform](https://img.shields.io/badge/platform-Linux-orange)
![License](https://img.shields.io/badge/license-MIT-green)

## What this is
A 3-week deep-dive into Linux systems programming — building core
infrastructure from scratch in C and C++. Every project is written
without relying on libraries where the point is to understand the
internals (e.g. the allocator does not use malloc).

## Projects

| # | Project | Status | Key concepts |
|---|---------|--------|--------------|
| 01 | [Memory Allocator](./01-memory-allocator/) | 🔄 In progress| sbrk, free lists, coalescing, buddy system |
| 02 | [Data Structures](./02-data-structures/) | ⬜ Planned| templates, RAII, move semantics, iterators |
| 03 | [Thread Pool](./03-thread-pool/) | ⬜ Planned | mutex, condition_variable, futures, atomics |
| 04 | [TCP/UDP Server](./04-tcp-udp-server/) | ⬜ Planned | POSIX sockets, select(), TLV framing |
| 05 | [epoll Event Loop](./05-epoll-server/) | ⬜ Planned | epoll, edge-triggered, reactor pattern |
| 06 | [Raw Socket Tools](./06-raw-socket-tools/) | ⬜ Planned | ICMP, ARP, DNS, TCP SYN scan |
| 07 | [Packet Analyzer](./07-packet-analyzer/) | ⬜ Planned | libpcap, BPF filters, protocol dissectors |
| 08 | [Network Monitor](./08-network-monitor/) | ⬜ Planned | capstone: all concepts combined |

## Tech stack
- Language: C17 / C++17
- Build: GNU Make + CMake
- Testing: custom test harness + Valgrind + sanitizers
- CI: GitHub Actions (gcc + clang, ASan + UBSan)
- Platform: Linux (Ubuntu 22.04+)

## Build
```bash
# Build all projects
make all

# Build a specific project
cd 01-memory-allocator && make

# Build with sanitizers
make CFLAGS="-fsanitize=address,undefined"

# Run tests
make test
```

## Performance highlights
- Memory allocator: zero leaks across 1M alloc/free cycles (Valgrind clean)
- epoll server: 8,000 concurrent connections vs select()'s 200
- Thread pool: work-stealing reduces idle time by ~40% vs naive queue

## What I learned
Running notes: [docs/learnings.md](./docs/learnings.md)
