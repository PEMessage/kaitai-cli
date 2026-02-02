#!/bin/bash

subcmd="$1"
shift



help() {
cat << EOF
Kaitai Struct CLI Tool Helper

Usage: $0 <command> [options]

Commands:
  ksv      - Visualize Kaitai Struct files (generates diagrams)
  ksc      - Compile Kaitai Struct files (.ksy) to various formats
  ksdump   - Parse binary files using Kaitai Struct specifications
  ksy      - List all available .ksy specification files in /ksy directory
  help     - Show this help message

Examples:
   ksy                    # List all .ksy files
   ksc --help             # Show help for ksc command
   ksdump file.bin spec.ksy  # Parse binary file using spec
   ksv format.ksy         # Generate visualization for format

For detailed help on specific commands, run:
  ksv --help
  ksc --help
  ksdump --help
EOF

}

case "$subcmd" in
    ksv) ksv "$@"
    ;;
    ksc) ksc "$@"
    ;;
    ksdump) ksdump "$@"
    ;;
    ksy) find /ksy -name '*.ksy'
    ;;
    *) help
    ;;
esac

