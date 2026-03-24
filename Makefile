PROJECTS := 01-memory-allocator 02-data-structures 03-thread-pool \
            04-tcp-udp-server 05-epoll-server 06-raw-socket-tools \
            07-packet-analyzer 08-network-monitor

.PHONY: all test clean $(PROJECTS)

all: $(PROJECTS)

$(PROJECTS):
	@if [ -f $@/Makefile ]; then \
		echo "=== Building $@ ==="; \
		$(MAKE) -C $@; \
	fi

test:
	@for p in $(PROJECTS); do \
		[ -f $$p/Makefile ] && $(MAKE) -C $$p test 2>/dev/null || true; \
	done

clean:
	@for p in $(PROJECTS); do \
		[ -f $$p/Makefile ] && $(MAKE) -C $$p clean 2>/dev/null || true; \
	done
