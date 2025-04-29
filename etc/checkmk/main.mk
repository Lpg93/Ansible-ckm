# -*- python -*-
# Main Checkmk configuration file
# Source controlled via Git: https://github.com/Lpg93/Ansible-ckm.git
#
# This file is the main entry point for non-WATO configurations.
# Hosts, rules, etc., managed by Ansible or WATO should primarily
# reside in individual files within the conf.d/ directory structure.

# Example: Define global settings if needed (rarely needed for basic setups)
# logwatch_forward_messages = False # Example global setting

# Define standard Checkmk list/dict variables if they don't exist.
# This prevents errors if other included .mk files assume they exist.
# Ansible will populate these via files in conf.d/wato/
if "all_hosts" not in globals(): all_hosts = []
if "ipaddresses" not in globals(): ipaddresses = {}
if "host_attributes" not in globals(): host_attributes = {}
if "host_tags" not in globals(): host_tags = {}
if "ruleset_rules" not in globals(): ruleset_rules = {}
if "bulkwalk_hosts" not in globals(): bulkwalk_hosts = []
if "clusters" not in globals(): clusters = {}
if "datasource_programs" not in globals(): datasource_programs = []
if "defined_custom_attributes" not in globals(): defined_custom_attributes = {}
if "host_contactgroups" not in globals(): host_contactgroups = []
if "host_groups" not in globals(): host_groups = []
if "parents" not in globals(): parents = []
if "service_contactgroups" not in globals(): service_contactgroups = []
if "service_groups" not in globals(): service_groups = []
# Add more as needed based on Checkmk documentation or features you use

# You can include other .mk files from here if you structure manually,
# but WATO/Ansible handles includes from conf.d/ automatically.
# Example: include("legacy_config.mk")
