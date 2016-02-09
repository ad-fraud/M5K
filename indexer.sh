#!/bin/bash

	LC_ALL=C cat sample | colrm 3 | grep -e ^"[a-zA-Z0-9]" | sort -u > indexer.keyspace
	cat indexer.keyspace | colrm 2 > indexer.key1

        while read KEY1
                do
                LC_ALL=C grep -e ^"$KEY1" sample > "$KEY1".temp
                LC_ALL=C grep -e ^"$KEY1" indexer.keyspace > indexer.key2

                while read KEY2
                        do
                LC_ALL=C grep -e ^"$KEY2" "$KEY1".temp > "$KEY2"
                done <indexer.key2

                rm "$KEY1".temp
        done <indexer.key1
