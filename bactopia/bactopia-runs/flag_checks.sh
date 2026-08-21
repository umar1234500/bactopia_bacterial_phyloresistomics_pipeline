#!/usr/bin/env bash
# step0_check_flags.sh
#
# WHY THIS SCRIPT EXISTS:
# Bactopia v4.0.0 (your version) had a near-complete rewrite. The paper we're
# replicating used v1.4.0, whose "bactopia datasets" command no longer exists.
# Before we write the real Step 1 script, we need to see the ACTUAL current
# flag names for telling Bactopia which species/genus you're working with,
# and where it caches reference data. This script only prints help text —
# it downloads nothing and changes nothing on your system.
#
# Run this, then paste me the output.

echo "=== Full help (all parameters) ==="
bactopia --help_all 2>&1

echo ""
echo "=== Grepping for species/genus/dataset-related flags ==="
bactopia --help_all 2>&1 | grep -i -A1 "species\|genus\|dataset\|reference"