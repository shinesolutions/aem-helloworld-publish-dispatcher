# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased
### Added
- Add rule to deny AEM endpoints.

## 0.12.2 - 2021-10-05
### Fixed
- Fix Publish GH Action broken make call

## 0.12.1 - 2021-10-05
### Fixed
- Fix artifact extension in Makefile publish target

## 0.12.0 - 2021-10-05
### Added
- Add release-major, release-minor, release-patch, and publish Makefile targets and GitHub Actions

### Changed
- Optimise Apache keep alive configurations (KeepAlive On, MaxKeepAliveRequests 0, KeepAliveTimeout 65)

## 0.11.1 - 2019-05-16
### Changed
- Modify changelog format to use keep-a-changelog

## 0.11.0 - 2018-07-19
### Added
- Add /etc.clientlibs/* to whitelist for AEM 6.4 support

### Changed
- Modify build to use aem-platform-buildenv Docker image
- Enable DispatcherUseProcessedURL dispatcher config [#12]

## 0.10.2 - 2018-03-29
### Added
- Add rule to deny cache invalidation [#11]

## 0.10.1 - 2018-03-26
### Added
- Add https listen port [#9]
- Add new ssl_cert parameter

### Changed
- Parameterise all configuration directories

## 0.10.0 - 2018-03-20
### Changed
- Update EPP template variables to work with stack provisioner 2.x

## 0.9.1 - 2018-01-13
### Changed
- Fix rewrite rules /cafe/helloworld and /cafe-helloworld [#5]

## 0.9.0 - 2017-03-02
### Added
- Initial version
