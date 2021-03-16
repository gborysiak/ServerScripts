#!/bin/bash
#
DOVEADM="/usr/bin/doveadm";

$DOVEADM expunge -A mailbox Trash savedbefore 3d
$DOVEADM expunge -A mailbox Junk  savedbefore 7d

#purge
$DOVEADM purge -A 
