# Bash Scripts — Security Automation Tools

A collection of Bash scripts built for cybersecurity automation on Kali Linux. Written as part of a structured security learning programme.

## Scripts

### sysinfo.sh
System information gatherer — outputs hostname, current user, CPU model, memory usage, disk usage, network interfaces and active connections. Useful for initial reconnaissance on a machine being assessed.

### logincheck.sh
Failed login detector — scans auth log files, counts total failed password attempts and ranks the top attacking IP addresses by frequency. Useful for detecting brute force attacks.

### portcheck.sh
Port availability checker — takes a target IP as a command line argument and scans common ports reporting which ones are open or closed.

### nmap_scan.sh
Automated Nmap scanner — takes a target IP as argument, runs an aggressive scan with service version detection and saves results to a dated text file for record keeping.

## Usage

```bash
chmod +x scriptname.sh
./scriptname.sh <target_ip>
```

## Legal notice

These tools are for educational purposes and authorised testing only. Only use against systems you own or have explicit written permission to test. Unauthorised scanning is illegal under the Computer Misuse Act 1990.

## Tech stack

Bash · Nmap · Kali Linux
