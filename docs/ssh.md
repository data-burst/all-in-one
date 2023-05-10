# SSH Documentation

## Generate new SSH Key

```bash
ssh-keygen -t ed25519 -C "<your-email>"
```

## Copy SSH key to remote server

```bash
ssh -i ~/.ssh/<key> user@host
# example:
# ssh-copy-id -i ~/.ssh/ed25519 mostafa.ghadimi@10.10.10.10
```

## SSH config file

Place the config file under `~/.ssh` directory. So your configuration file will look like the following:

`~/.ssh/config`:

```bash
Host <hostname>
        User <your-username>
        HostName <hostname-or-domain>
        IdentityFile <ssh-private-key-path>
```

Example: 

```bash
Host dev1
        User mostafa.ghadimi
        HostName 10.10.10.10
        IdentityFile ~/.ssh/id_ed25519
```

Then, the connection to the server can be established easily by executing `ssh dev1` command.