# fedora-kde-intune-portal

Microsoft only provides intune-portal for Ubuntu LTS and RHEL.

However, it is nevertheless possible to install and use the RHEL 10 version without modification on Fedora Workstation (GNOME).

On Fedora KDE Edition, intune-portal is installable, but it is not possible to register a device without modification. intune-portal only uses gnome-keyring, which is not installed with the KDE version of Fedora.

Here are the commands to set up the repository and installation.

To validate a connection on a Microsoft 365 account that requires Intune compliance, Microsoft only validates the Microsoft Edge browser, which is the only official Intune Broker on Linux.

Siemens has developed a plugin for Firefox and Chromium-based browsers to inject the PRT token between the Microsoft identity Broker service on the machine and Microsoft 365 pages.

https://github.com/siemens/linux-entra-sso
