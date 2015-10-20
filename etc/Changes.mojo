
6.25  2015-10-20
  - Improved Mojo::DOM::CSS to support selectors with leading and trailing
    whitespace.
  - Fixed "0" value bug in Mojo::JSON::Pointer.

6.24  2015-10-13
  - Improved session security by not storing secrets in the stash and making
    CSRF tokens much harder to guess.
  - Improved commands to show all options that can affect their behavior.
  - Fixed bug in Mojo::JSON::Pointer that prevented JSON Pointers with trailing
    slash from working correctly. (dolmen)
  - Fixed support for domains with trailing dot in Mojo::URL.

6.23  2015-10-06
  - Improved documentation browser CSS.
  - Fixed bug in Mojo::Transaction::WebSocket where an unsupported protocol
    could be selected automatically.
  - Fixed input record separator bug in Mojo::Util. (Zoffix, sri)
  - Fixed small redirect bug in Mojo::UserAgent::Transactor.

6.22  2015-09-26
  - Improved Mojo::JSON by reusing JSON::PP boolean constants.
  - Improved uniq method in Mojo::Collection to accept a callback. (CandyAngel)
  - Improved first and grep methods in Mojo::Collection to be able to call
    methods.
  - Improved support for empty attributes in Mojo::DOM::HTML.

6.21  2015-09-23
  - Added val method to Mojo::DOM.

6.20  2015-09-15
  - Deprecated Mojo::UserAgent::CookieJar::collecting in favor of
    Mojo::UserAgent::CookieJar::ignore.
  - Improved support for epoll/kqueue in Mojo::IOLoop::Client.

6.19  2015-09-12
  - Added code of conduct to Mojolicious::Guides::Contributing.
  - Added ignore attribute to Mojo::UserAgent::CookieJar.
  - Added tls_version option to Mojo::IOLoop::Server::listen.
  - Added version parameter to Mojo::Server::Daemon::listen.

6.18  2015-09-02
  - Improved portability of slurp function in Mojo::Util.
  - Fixed handling of parameters with multiple values in
    Mojolicious::Plugin::TagHelpers.
  - Fixed Makefile.PL to be compliant with version 2 of the CPAN distribution
    metadata specification. (Grinnz)

6.17  2015-08-21
  - Improved slurp method in Mojo::Asset::File to only use one file descriptor.

6.16  2015-08-19
  - Improved check_box, radio_button and select_field tag helpers to handle the
    attributes "checked" and "selected" correctly.
  - Improved performance of slurp function in Mojo::Util slightly.

6.15  2015-08-13
  - Removed deprecated build_body and build_headers methods from Mojo::Content.
  - Improved Mojo::Transaction::HTTP performance slightly.
  - Fixed warnings in Mojo::DOM.

6.14  2015-07-12
  - Improved app generator command not to create a log directory.

6.13  2015-07-08
  - Added support for validating file uploads.
  - Added upload check to Mojolicious::Validator.
  - Improved error messages for broken applications in Mojo::Server. (mst)
  - Improved subscribers method in Mojo::EventEmitter to allow subscribers to be
    modified more easily.

6.12  2015-06-18
  - Welcome to the Mojolicious core team Dan Book.
  - Added TO_JSON method to Mojo::Collection. (wttw)
  - Added find_packages function to Mojo::Loader.
  - Fixed bug in Mojo::Message where multipart content would get downgraded
    unnecessarily.

6.11  2015-05-16
  - Deprecated Mojo::Content::build_body and Mojo::Content::build_headers.
  - Added headers_contain method to Mojo::Content.
  - Updated jQuery to version 2.1.4.
  - Fixed indentation of ASCII art in documentation browser. (jberger)
  - Fixed bug where inline was not considered a reserved stash value.

6.10  2015-04-26
  - Removed support for user/group switching, because it never worked
    correctly, which means that this security feature has become an attack
    vector itself. If you depend on this functionality, you can now use the
    CPAN module Mojolicious::Plugin::SetUserGroup instead.
  - Removed group and user attributes from Mojo::Server.
  - Removed setuidgid method from Mojo::Server.
  - Removed group and user settings from Hypnotoad.
  - Removed -g/--group and -u/--user options from daemon and prefork commands.
  - Added next_tick method to Mojo::Reactor::Poll.
  - Improved next_tick callbacks to run in the same order in which they were
    registered.

6.09  2015-04-25
  - Improved HTML Living Standard compliance of Mojo::Parameters. (riche, sri)
  - Fixed bug in Mojolicious::Types where the json MIME type did not specify a
    charset. (kaktus)

6.08  2015-04-09
  - Added is_established and server_open methods to
    Mojo::Transaction::WebSocket.
  - Improved finish and send methods in Mojolicious::Controller to
    automatically establish the WebSocket connection if necessary.
  - Improved pod_to_html helper in Mojolicious::Plugin::PODRenderer to unindent
    verbatim blocks. (OlegG)

6.07  2015-04-07
  - Fixed Windows bug in "daemon.t".

6.06  2015-04-06
  - Added element_count_is method to Test::Mojo. (Zoffix)
  - Added "chat.pl" to example scripts.
  - Improved Mojo::DOM::CSS to handle attribute selectors with single quotes
    correctly.

6.05  2015-03-24
  - Fixed circular require bug in Mojo::Base and Mojo::Util.

6.04  2015-03-23
  - Improved Mojo::Reactor::EV and Mojo::Reactor::Poll to fail more
    consistently.
  - Improved Mojo::Base performance slightly.
  - Fixed a few bugs in Mojo::DOM::CSS that required class, id and attribute
    selectors, as well as pseudo-classes, to be in a specific order.

6.03  2015-03-16
  - Added support for overriding the HTTP request method with the _method query
    parameter.
  - Added suggested_method method to Mojolicious::Routes::Route.
  - Improved portability of some tests.

6.02  2015-03-09
  - Added daemon attribute to Mojo::Server::Morbo.
  - Improved portability of Mojo::Server::Morbo.
  - Fixed empty template handling in Mojo::Template.

6.01  2015-03-03
  - Added content_with helper to Mojolicious::Plugin::DefaultHelpers.
  - Relaxed request-line handling in Mojo::Message::Request.
  - Fixed code name in version command and built-in templates.

6.0  2015-02-26
  - Code name "Clinking Beer Mugs", this is a major release.
  - Removed name listing support from param method in Mojolicious::Controller.
  - Removed name listing support from param method in Mojo::Parameters.
  - Removed name listing support from error and param methods in
    Mojolicious::Validator::Validation.
  - Removed multi-name support from cookie, param and signed_cookie methods in
    Mojolicious::Controller.
  - Removed multi-name support from param method in
    Mojolicious::Validator::Validation.
  - Removed multi-name support from param method in Mojo::Parameters.
  - Removed multi-name support from cookie and upload methods in Mojo::Message.
  - Removed custom socket support from Mojo::UserAgent.
  - Removed is_fatal, is_level and log methods from Mojo::Log.
  - Removed auto_render method from Mojolicious::Routes.
  - Removed deprecated object-oriented Mojo::Loader API.
  - Removed deprecated accept_interval, lock and unlock attributes from
    Mojo::IOLoop.
  - Removed deprecated accept_interval, lock_file and lock_timeout attributes
    from Mojo::Server::Prefork.
  - Removed deprecated bridge method from Mojolicious::Routes::Route.
  - Removed deprecated is_readable method from Mojo::Reactor.
  - Removed deprecated siblings method from Mojo::DOM.
  - Removed deprecated render_exception and render_not_found methods from
    Mojolicious::Controller.
  - Removed deprecated keep_alive_requests setting from Hypnotoad.
  - Changed return values of all and find methods in
    Mojo::UserAgent::CookieJar.
  - Renamed template attribute in Mojo::Template to unparsed.
  - Renamed extracting attribute in Mojo::UserAgent::CookieJar to collecting.
  - Renamed types attribute in Mojolicious::Types to mapping.
  - Renamed current attribute in Mojolicious::Routes::Match to position.
  - Renamed pattern attribute in Mojolicious::Routes::Pattern to unparsed.
  - Renamed all_contents, contents, following_siblings, match, next_sibling,
    node, preceding_siblings, previous_sibling and type methods in Mojo::DOM to
    descendant_nodes, child_nodes, following_nodes, matches, next_node, type,
    preceding_nodes, previous_node and tag.
  - Renamed match method in Mojo::DOM and Mojo::DOM::CSS to matches.
  - Renamed extract and inject methods in Mojo::UserAgent::CookieJar to collect
    and prepare.
  - Renamed inject method in Mojo::UserAgent::Proxy to prepare.
  - Renamed params method in Mojo::Parameters to pairs.
  - Renamed match method in Mojolicious::Routes::Match to find.
  - Renamed -A option of prefork command to -a.
  - Added names method to Mojo::Parameters.
  - Added failed and passed methods to Mojolicious::Validator::Validation.
  - Added -I and -M options to prefork command.
  - Fixed Mojo::Template support for parentheses in expressions. (jberger, sri)

5.82  2015-02-22
  - Deprecated Mojo::Reactor::is_readable.
  - Deprecated keep_alive_requests setting in Hypnotoad in favor of requests.
  - Improved Morbo to restart slightly faster.
  - Fixed bug in daemon and prefork commands where --inactivity-timeout option
    was called --inactivity.

5.81  2015-02-20
  - Deprecated object-oriented Mojo::Loader API.
  - Added data_section, file_is_binary, load_class and find_modules functions
    to Mojo::Loader.
  - Improved design of built-in templates.
  - Fixed test command to not let Test::Harness enable global warnings by
    default. (OlegG)

5.80  2015-02-18
  - Deprecated Mojo::IOLoop::accept_interval, Mojo::IOLoop::lock and
    Mojo::IOLoop::unlock.
  - Deprecated Mojo::Server::Prefork::accept_interval,
    Mojo::Server::Prefork::lock_file and Mojo::Server::Prefork::lock_timeout.
  - Removed -a/--accept-interval, --lock-file and -L/--lock-timeout options
    from prefork command.
  - Removed accept_interval, lock_file and lock_timeout settings from
    Hypnotoad.
  - Added stop_gracefully method to Mojo::IOLoop.
  - Added finish event to Mojo::IOLoop.
  - Reduced CPU usage of Mojo::IOLoop and Mojo::Server::Prefork significantly.
  - Improved app generator command to use current best practices.
  - Fixed bug where semicolons at the end of a cookie were not parsed
    correctly. (dmw397)
  - Fixed bug in Mojo::IOLoop where connection limits were not properly
    enforced.
  - Fixed url_for to handle paths without trailing slash correctly in embedded
    applications.

5.79  2015-02-13
  - Fixed bug in Mojo::Reactor::Poll that caused excessive idle CPU usage.

5.78  2015-02-12
  - Replaced expires method in Mojo::Cookie::Response with an attribute.
  - Added split_cookie_header function to Mojo::Util.
  - Updated IO::Socket::SSL requirement to 1.94.
  - Relaxed RFC 822/1123 and RFC 850/1036 handling in Mojo::Date.
  - Improved Mojo::Reactor::Poll performance significantly.
  - Improved text method in Mojo::Message to use default_charset as well.
  - Improved design of built-in templates.
  - Fixed bug in Mojo::DOM that made parsing a requirement.
  - Fixed warnings in Mojo::URL.

5.77  2015-02-03
  - Added content_security_policy method to Mojo::Headers.
  - Fixed canonicalize in Mojo::Path to not remove parts with more than three
    dots.

5.76  2015-02-02
  - Emergency release for a critical security issue that can expose files on
    Windows systems, everybody should update!
  - Increased default max_message_size from 10MB to 16MB in Mojo::Message.
  - Reduced default max_line_size from 10KB to 8KB in Mojo::Headers and
    Mojo::Message.
  - Improved Hypnotoad load balancing by calling srand() after starting a new
    worker in Mojo::Server::Prefork.
  - Improved design of built-in templates.
  - Fixed bug in Mojo::IOLoop where the accept limit was applied too broadly.
  - Fixed bug in Mojo::Server::Prefork where the TTOU signal would not always
    stop a worker.
  - Fixed bug in Mojo::DOM::CSS where combinators needed to be surrounded by
    whitespace.

5.75  2015-01-26
  - Added healthy method to Mojo::Server::Prefork.
  - Improved all built-in web servers to die if group or user assignment
    failed.
  - Improved Hypnotoad to wait for new workers to be ready before stopping the
    old ones during hot deployment.
  - Improved commands and log messages to use less punctuation.
  - Fixed bug in Mojo::IOLoop where the callback passed to next_tick would
    receive the wrong invocant.
  - Fixed race condition and memory leak in Mojo::Server::Prefork.

5.74  2015-01-25
  - Improved parser errors to be more consistent with connection errors in
    Mojo::Message::Request and Mojo::Message::Response.
  - Fixed "0" value bug in Mojo::Parameters.
  - Fixed bug where placeholder default values would not always have
    precedence.
  - Fixed proxy detection in get command.

5.73  2015-01-24
  - Deprecated Mojolicious::Routes::Route::bridge in favor of
    Mojolicious::Routes::Route::under.
  - Deprecated Mojolicious::Controller::render_exception in favor of
    reply->exception helper.
  - Deprecated Mojolicious::Controller::render_not_found in favor of
    reply->not_found helper.
  - Removed deprecated object-oriented Mojo::JSON API.
  - Removed deprecated stringification support from Mojo::Collection.
  - Removed deprecated support for data arguments from Mojo::JSON::Pointer.
  - Removed deprecated AUTOLOAD and pluck methods from Mojo::Collection.
  - Removed deprecated AUTOLOAD and val methods from Mojo::DOM.
  - Moved tutorial from Mojolicious::Lite to Mojolicious::Guides::Tutorial.
  - Added term_escape method to Mojo::ByteStream.
  - Added term_escape function to Mojo::Util.
  - Improved get command to use the user agent of the application.
  - Improved diagnostics information for MOJO_DAEMON_DEBUG,
    MOJO_USERAGENT_DEBUG and MOJO_WEBSOCKET_DEBUG environment variables.
  - Fixed tag helpers to generate correct HTML5. (batman, sri)
  - Fixed JSON Pointer escaping bug.
  - Fixed portability bug in monkey_patch tests.

5.72  2015-01-11
  - Added EXPERIMENTAL support for case-insensitive attribute selectors like
    [foo="bar" i] to Mojo::DOM::CSS.
  - Added max_lines attribute to Mojo::Headers.
  - Improved Mojo::Reactor::EV to update the current time before starting a
    timer.
  - Improved error messages for start-line and header limits.
  - Fixed bug in Mojo::Headers where max_line_size was not checked correctly.
  - Fixed whitespace bug in Mojo::DOM::CSS.

5.71  2015-01-01
  - Updated Net::DNS::Native requirement to 0.15 for some important bug fixes.
  - Updated jQuery to version 2.1.3.
  - Improved Mojo::URL performance.
  - Fixed fragment and userinfo normalization bugs in Mojo::URL.
  - Fixed query charset bug in Mojo::URL.
  - Fixed a few merge bugs in Mojo::Parameters.

5.70  2014-12-18
  - Improved Mojo::Template performance.
  - Fixed error handling bugs in Mojo::IOLoop::Stream.
  - Fixed a few limit bugs in Mojo::Message.
  - Fixed Windows bug in Mojo::IOLoop::Client. (OlegG)

5.69  2014-12-13
  - Deprecated Mojo::DOM::siblings.
  - Added following, following_siblings, preceding and preceding_siblings
    methods to Mojo::DOM.
  - Added port method to Mojo::IOLoop::Server.
  - Removed deprecated emit_safe method from Mojo::EventEmitter.
  - Removed deprecated render_static method from Mojolicious::Controller.
  - Removed deprecated has_conditions method from Mojolicious::Routes::Route.
  - Updated Net::DNS::Native requirement to 0.14 for some important bug fixes.
  - Improved Mojo::DOM::HTML performance slightly.
  - Fixed parent combinator bug in Mojo::DOM::CSS.
  - Fixed whitespace bug in Mojo::DOM::HTML.
  - Fixed Mojo::UserAgent::Transactor to handle query parameters more like
    most common browsers.

5.68  2014-12-02
  - Improved Mojo::DOM::CSS performance significantly.
  - Fixed deprecation warnings in get command.
  - Fixed bug in Mojolicious::Controller where sending a WebSocket message
    would cause multiple resume events.

5.67  2014-11-27
  - Improved overall performance by deserializing sessions only on demand.
  - Fixed bug where embedded applications would deserialize sessions twice.

5.66  2014-11-26
  - Improved many WebSocket tests in Test::Mojo to be able to fail gracefully.
  - Fixed bug in Mojo::DOM::CSS where the :empty pseudo-class would not ignore
    comments and processing instructions.

5.65  2014-11-24
  - Improved installable scripts to use #!perl. (jberger)
  - Improved Mojo::JSON security by escaping the "/" character.
  - Improved Mojolicious::Commands to reset the global Getopt::Long
    configuration more safely.
  - Fixed bug in Mojo::DOM::CSS where selected results would also include the
    current root element.

5.64  2014-11-22
  - Fixed bug in Mojolicious::Commands where the global Getopt::Long
    configuration would be changed after a command had already been loaded.

5.63  2014-11-21
  - Improved portability of some tests.
  - Fixed a few multipart form handling bugs.

5.62  2014-11-18
  - Fixed bug in Mojolicious::Routes::Pattern where optional placeholders in
    nested routes would sometimes not work correctly.
  - Fixed bug where "handler" was not an allowed name for controller methods.

5.61  2014-11-14
  - Moved entities.txt into the DATA section of Mojo::Util to avoid
    gratuitously breaking module bundlers.

5.60  2014-11-11
  - Added to_array method to Mojo::Collection.
  - Added xss_escape function to Mojo::Util.
  - Updated Net::DNS::Native requirement to 0.12 for some important bug fixes.

5.59  2014-11-07
  - Added support for non-blocking name resolution with Net::DNS::Native.

5.58  2014-11-06
  - Improved error handling in Mojo::IOLoop::Client.

5.57  2014-11-02
  - Deprecated stringification support in Mojo::Collection in favor of
    Mojo::Collection::join.
  - Deprecated Mojo::Collection::pluck in favor of Mojo::Collection::map.
  - Deprecated Mojo::DOM::val.
  - Improved map method in Mojo::Collection to be able to call methods.
  - Improved tap method in Mojo::Base to be able to call methods.

5.56  2014-10-29
  - Deprecated Mojo::Collection::AUTOLOAD in favor of Mojo::Collection::pluck.
  - Deprecated Mojo::DOM::AUTOLOAD in favor of Mojo::DOM::children.

5.55  2014-10-28
  - Deprecated support for data arguments in Mojo::JSON::Pointer.
  - Added access_control_allow_origin, content_language, content_location and
    strict_transport_security methods to Mojo::Headers.

5.54  2014-10-23
  - Deprecated object-oriented Mojo::JSON API.
  - Added auto_decompress attribute to Mojo::Content.
  - Improved Mojo::Content to parse content more defensively.
  - Fixed chunked transfer encoding bug in Mojo::Content.
  - Fixed bug where Mojo::UserAgent would try to follow redirects for
    protocols other than HTTP and HTTPS.

5.53  2014-10-20
  - Fixed bug in Mojo::Server where secondary groups were not reassigned
    correctly. (ksm, sri)

5.52  2014-10-18
  - Fixed read-only file system compatibility of Mojo::Asset::File.

5.51  2014-10-17
  - Fixed bug in Mojolicious::Validator::Validation where every_param would
    sometimes return an array reference containing an undef value.
  - Fixed Mojo::ByteStream and Mojo::Collection to always return true in
    boolean context.

5.50  2014-10-15
  - Improved Mojo::DOM::HTML performance slightly.
  - Fixed description list parsing bug in Mojo::DOM::HTML. (Trelane)

5.49  2014-10-10
  - Improved form content generator to allow custom content types.
  - Improved Mojo::Server to load applications consistently for all servers.
    (tianon, sri)
  - Fixed Mojolicious::Static to hide files without extensions in DATA
    sections.
  - Fixed inflate command to ignore files without extensions.
  - Fixed bug in Mojolicious::Routes::Route where formats could be rendered
    twice for embedded applications.

5.48  2014-10-07
  - Emergency release for a serious security issue that can result in
    parameter injection attacks, everybody should update!
    Breaking change: Methods that previously worked differently in scalar than
    in list context now always assume scalar context, and new methods have
    been added to cover the list context functionality.
  - Added every_cookie and every_upload methods to Mojo::Message.
  - Added every_param method to Mojo::Message::Request.
  - Added every_param method to Mojo::Parameters.
  - Added every_cookie, every_param and every_signed_cookie methods to
    Mojolicious::Controller.
  - Added every_param method to Mojolicious::Validator::Validation.
  - Added from_json and to_json functions to Mojo::JSON.
  - Improved pluck method in Mojo::Collection to be able to extract values from
    hash references.

5.47  2014-09-28
  - Improved url_for performance.

5.46  2014-09-26
  - PAUSE lost the previous release.

5.45  2014-09-26
  - Deprecated Mojolicious::Routes::Route::has_conditions.
  - Added extracting attribute to Mojo::UserAgent::CookieJar.
  - Improved performance of next, next_sibling, previous and previous_sibling
    methods in Mojo::DOM significantly.
  - Improved Mojo::Cache to allow caching to be disabled. (mvgrimes, sri)
  - Fixed url_for bug where deeply nested WebSocket routes would not work
    correctly.

5.44  2014-09-23
  - Fixed bug in Mojolicious::Renderer that prevented proxy objects from being
    reused.

5.43  2014-09-22
  - Updated Makefile.PL for version 2 of the CPAN distribution metadata
    specification.
  - Improved get command to not depend on Content-Type headers for
    differentiating between JSON and HTML/XML.

5.42  2014-09-17
  - Fixed url_for bug where an unnecessary slash could be rendered before
    formats.

5.41  2014-09-13
  - Deprecated Mojolicious::Controller::render_static in favor of
    reply->static helper.
  - Added mtime attribute to Mojo::Asset::Memory.
  - Added mtime method to Mojo::Asset and Mojo::Asset::File.
  - Added reply->asset and reply->static helpers to
    Mojolicious::Plugin::DefaultHelpers.
  - Fixed bug in Mojo::UserAgent where connections would sometimes not get
    closed correctly.

5.40  2014-09-12
  - Deprecated Mojo::EventEmitter::emit_safe.
  - Added reply->exception and reply->not_found helpers to
    Mojolicious::Plugin::DefaultHelpers.
  - Improved all events to handle exceptions the same.

5.39  2014-09-07
  - Improved decamelize performance.
  - Fixed bug in Mojo::Template where newline characters could get lost.

5.38  2014-09-05
  - Improved routes command to use new terminology for flags.
  - Fixed bug in Mojo::Util where tablify could not handle empty columns.

5.37  2014-09-03
  - Improved Mojo::Template performance slightly.
  - Fixed .ep template bug where the stash value "c" could no longer be used.

5.36  2014-09-02
  - Improved Mojo::Template performance.

5.35  2014-08-30
  - Improved monkey_patch to be able to name generated functions.

5.34  2014-08-29
  - Added original_remote_address attribute to Mojo::Transaction.
  - Fixed bug where Mojolicious::Commands would change @ARGV when loaded.

5.33  2014-08-24
  - Improved Mojo::Date to be able to handle higher precision times.
  - Improved Mojo::ByteStream performance.

5.32  2014-08-21
  - Added to_datetime method to Mojo::Date.
  - Improved Mojo::Date to support RFC 3339.

5.31  2014-08-19
  - Improved Mojolicious::Static to allow custom content types.
  - Improved url_for performance.

5.30  2014-08-17
  - Improved Mojolicious::Static to only handle GET and HEAD requests.
  - Improved Mojo::URL performance.
  - Improved url_for performance slightly.
  - Fixed bug where DATA sections sometimes got corrupted after forking, which
    caused applications to fail randomly.
  - Fixed Mojo::IOLoop::Client to use a timeout for every connection.

5.29  2014-08-16
  - Added helpers method to Mojolicious::Controller.
  - Improved performance of .ep templates slightly.
  - Fixed "0" value bug in Mojolicious::Plugin::EPRenderer.

5.28  2014-08-13
  - Improved performance of nested helpers and helpers in templates
    significantly.
  - Improved Mojo::JSON to generate smaller JSON by not escaping the "/"
    character.

5.27  2014-08-11
  - Added support for nested helpers.
  - Added get_helper method to Mojolicious::Renderer.
  - Added n function to ojo.
  - Fixed bug in Mojolicious::Routes::Match where placeholder values got merged
    too early.

5.26  2014-08-09
  - Improved WebSocket performance.
  - Fixed proxy exception handling bug in Mojo::UserAgent.
  - Fixed bug where Mojo::Transaction::WebSocket would build incorrect frames
    if the FIN bit was not set.

5.25  2014-08-07
  - Added reduce method to Mojo::Collection. (sri, batman)
  - Added if_none_match method to Mojo::Headers.
  - Added is_fresh method to Mojolicious::Static.
  - Added is_fresh helper to Mojolicious::Plugin::DefaultHelpers.
  - Improved Mojolicious to use MyApp::Controller namespace by default and
    encourage its use in the documentation.
  - Improved sort method in Mojo::Collection to use $a and $b. (batman)
  - Improved Mojolicious::Static to support ETag and If-None-Match headers.
  - Improved documentation browser CSS.
  - Fixed escaping bugs in Mojo::DOM::CSS.

5.24  2014-08-02
  - Improved url_escape performance slightly.
  - Fixed memory leak in Mojo::IOLoop::Client.
  - Fixed bug where ojo would sometimes die silently.

5.23  2014-07-31
  - Improved router performance.
  - Improved routes command to show format regular expression separately.
  - Fixed partial route bug in Mojolicious::Routes::Match.
  - Fixed format detection bug in Mojolicious::Routes::Pattern.

5.22  2014-07-30
  - Added SOCKS5 support to Mojo::UserAgent.
  - Added socks_address, socks_pass, socks_port and socks_user options to
    Mojo::IOLoop::Client::connect.
  - Improved documentation browser CSS.

5.21  2014-07-27
  - Improved handling of Pod::Simple::XHTML 3.09 dependency.
  - Improved documentation browser CSS.

5.20  2014-07-27
  - Fixed a few bugs in Mojolicious::Plugin::PODRenderer by switching from
    Pod::Simple::HTML to Pod::Simple::XHTML.
  - Fixed Perl 5.18.x compatibility.

5.19  2014-07-26
  - Improved support for Unicode anchors in Mojolicious::Plugin::PODRenderer.
  - Fixed is_readable scalability problems in Mojo::Reactor.

5.18  2014-07-25
  - Improved is_readable performance in Mojo::Reactor.

5.17  2014-07-24
  - Welcome to the Mojolicious core team Jan Henning Thorsen.
  - Added val method to Mojo::DOM. (batman, sri)
  - Improved Mojo::Collection performance.
  - Fixed support for Unicode anchors in Mojolicious::Plugin::PODRenderer.

5.16  2014-07-21
  - Improved Mojo::Asset::File to allow appending data to existing files.
    (iakuf, sri)

5.15  2014-07-17
  - Improved Mojo::DOM::HTML performance slightly.
  - Fixed small selector bug in get command.

5.14  2014-07-14
  - Improved all_text performance in Mojo::DOM.
  - Improved Mojo::DOM::CSS, Mojo::DOM::HTML and Mojo::JSON performance with
    regular expression optimizations.
  - Fixed deep recursion warnings in Mojo::DOM and Mojo::DOM::HTML. (jberger)

5.13  2014-07-13
  - Added json_like, json_message_like, json_message_unlike and json_unlike
    methods to Test::Mojo.
  - Improved HTML5.1 compliance of Mojo::DOM::HTML.
  - Fixed bug where Mojo::UserAgent would keep too many connections alive.
  - Fixed Mojo::Reactor::Poll bug where watchers were active after they have
    been removed. (jberger)

5.12  2014-07-04
  - Fixed a few multipart form handling bugs.
  - Fixed AUTOLOAD bug in Mojo::Collection where it would behave differently
    than calling pluck directly.

5.11  2014-07-02
  - Moved reverse_proxy attribute from Mojo::Server::Daemon to Mojo::Server.
  - Added delay and inactivity_timeout helpers to
    Mojolicious::Plugin::DefaultHelpers.
  - Improved error method in Mojolicious::Validator::Validation to return
    field names when called without arguments.
  - Fixed "0" value bug in Mojo::UserAgent::Transactor.

5.10  2014-06-28
  - Added cleanup attribute to Mojo::Server::Prefork.
  - Improved Mojo::Server::Prefork to keep sending heartbeat messages when
    stopping gracefully.
  - Fixed small bug where Mojo::Server::Daemon was too eager to reconfigure
    Mojo::IOLoop.
  - Fixed small bug where Hypnotoad would clean up process id and lock files
    too early.

5.09  2014-06-24
  - Improved .ep templates to make the current controller available as $c.

5.08  2014-06-17
  - Added reset method to Mojo::IOLoop.
  - Added reset method to Mojo::Reactor.
  - Added reset method to Mojo::Reactor::Poll.

5.07  2014-06-13
  - Fixed RFC 7230 compliance bugs in Mojo::Headers.

5.06  2014-06-11
  - Added deserialize and serialize attributes to Mojolicious::Sessions.
  - Improved redirect_to to behave more like url_for.
  - Fixed bug in Mojo::UserAgent where HTTP/1.0 connections were sometimes kept
    alive.

5.05  2014-06-08
  - Fixed parsing of header fields with single character names in
    Mojo::Headers. (crab)

5.04  2014-06-03
  - Added expect_close attribute to Mojo::Content.
  - Improved support for broken responses to CONNECT requests.

5.03  2014-06-02
  - Fixed bug where Mojo::DOM::HTML could not handle certain broken tags.

5.02  2014-05-31
  - Added multi-name support to cookie and signed_cookie methods in
    Mojolicious::Controller.
  - Added multi-name support to cookie and upload methods in Mojo::Message.
  - Improved Mojolicious::Command::generate::plugin to use better directory
    names.
  - Fixed bug where Mojo::DOM::HTML could not handle tags with lots of
    attributes.

5.01  2014-05-30
  - Fixed continuation line handling in Mojo::Headers.

5.0  2014-05-29
  - Code name "Tiger Face", this is a major release.
  - Changed heuristics for number detection in Mojo::JSON to better line up
    with user expectations.
  - Changed lock and unlock callbacks in Mojo::IOLoop to not receive an
    invocant.
  - Changed return value of path_for method in Mojolicious::Routes::Match.
  - Changed return value and arguments of error method in Mojo::Message.
  - Removed deprecated support for X-Forwarded-HTTPS.
  - Removed return values from wait method in Mojo::IOLoop::Delay.
  - Removed list context support from header method in Mojo::Headers.
  - Removed generate_port method from Mojo::IOLoop.
  - Replaced reserved stash value partial with render_to_string method.
  - Replaced format method in Mojo::Log with an attribute.
  - Replaced check_file method in Mojo::Server::Morbo with check method.
  - Added with_compression method to Mojo::Transaction::WebSocket.
  - Added catch method to Mojo::EventEmitter.
  - Added append method to Mojo::Log.
  - Updated jQuery to version 2.1.1.
  - Improved Mojo::IOLoop::Delay to automatically check if the event loop is
    already running.
  - Improved Mojo::Parameters to consistently accept arrays.
  - Improved Mojo::Collection to perform actual boolean checks. (marcus)
  - Fixed Mojo::DOM::HTML to handle slashes in unquoted attribute values
    correctly.
  - Fixed Mojo::IOLoop::Server to work correctly with newer versions of
    IO::Socket::SSL. (noxxi)
  - Fixed rendering bug where rewritten arguments could not be localized.
  - Fixed verification bug in Mojo::IOLoop::Server.
  - Fixed path generation bug in Mojolicious::Routes::Match.
  - Fixed warnings in Mojo::IOLoop::Delay.

4.99  2014-05-12
  - Added support for performing blocking and non-blocking requests at the same
    time with Mojo::UserAgent.
  - Added nb_url method to Mojo::UserAgent::Server.
  - Improved Mojo::IOLoop::Server and Mojo::Server::Daemon to be able to listen
    on random ports.

4.98  2014-05-09
  - Removed deprecated get_line function from Mojo::Util.
  - Removed deprecated content_xml, replace_content, text_before, text_after
    and to_xml methods from Mojo::DOM.
  - Improved accept performance in Mojo::IOLoop::Server.

4.97  2014-04-30
  - Deprecated support for X-Forwarded-HTTPS in favor of X-Forwarded-Proto.
  - Added multi-name support to param method in Mojo::Parameters.

4.96  2014-04-28
  - Improved Mojo::IOLoop to use Mojo::IOLoop::Delay more consistently.

4.95  2014-04-27
  - Improved Mojo::IOLoop::Delay with circular reference protection.
  - Improved Mojo::IOLoop::Delay to allow argument splicing.
  - Improved Mojo::IOLoop::Server to reuse cipher list from IO::Socket::SSL.
  - Fixed memory leak in Mojo::UserAgent::Server.

4.94  2014-04-20
  - Added reverse_proxy attribute to Mojo::Server::Daemon.
  - Added reverse_proxy attribute to Mojo::Message::Request.
  - Added prefork and upgrade_timeout attributes to Mojo::Server::Hypnotoad.
  - Added configure method to Mojo::Server::Hypnotoad.
  - Relaxed name handling in Mojo::Headers a little.
  - Fixed small bug in online tests.

4.93  2014-04-13
  - Fixed bug where Mojolicious::Static would not use the correct default MIME
    type.

4.92  2014-04-08
  - Removed deprecated use of hash references for optgroup generation with
    select_field helper.
  - Improved dumper helper to escape unprintable characters.
  - Fixed small handler detection bug in Mojolicious::Renderer.

4.91  2014-03-29
  - Added daemonize method to Mojo::Server.
  - Added ensure_pid_file method to Mojo::Server::Prefork.
  - Removed deprecated secret method from Mojolicious.
  - Improved performance of Mojolicious::Plugin::EPRenderer and
    Mojolicious::Plugin::EPLRenderer.
  - Improved Mojo::Reactor::Poll portability with POLLPRI support.

4.90  2014-03-16
  - Removed deprecated to_rel method from Mojo::URL.
  - Updated IO::Socket::SSL requirement to 1.84 due to breaking changes in
    IO::Socket::SSL.
  - Improved documentation browser with more accessible links and readable
    inline code.
  - Fixed textarea and title parsing bugs in Mojo::DOM::HTML.

4.89  2014-03-13
  - Added support for template variants.
  - Improved built-in templates with unobtrusive menu bar.
  - Fixed bug in Mojo::DOM::HTML where non-self-closing elements were not
    handled correctly.
  - Fixed bug in Mojo::DOM::HTML where <image> was not treated as an alias for
    <img>.

4.88  2014-03-09
  - Added build_controller method to Mojolicious.
  - Added match method to Mojolicious::Routes.
  - Improved Mojo::Server::Daemon to handle setuid/setgid errors more
    gracefully.
  - Improved Mojo::Server::Prefork to handle lock file errors more gracefully.
  - Improved exception page to show better context information for templates.
  - Fixed comment on last line bug in Mojo::Template.

4.87  2014-03-04
  - Improved Mojo::ByteStream to allow more method chaining.
  - Fixed RFC 7159 support in Mojo::JSON.
  - Fixed RFC 7159 compliance bugs in Mojo::Transaction::WebSocket and
    Test::Mojo.
  - Fixed Unicode bugs in Test::Mojo.

4.86  2014-03-03
  - Improved Mojo::IOLoop::Delay to allow more method chaining.
  - Improved WebSocket and long poll performance.

4.85  2014-02-26
  - Added next_tick method to Mojo::IOLoop and Mojo::Reactor.
  - Added host_port and path_query methods to Mojo::URL.
  - Added is_handshake method to Mojo::Message::Request.
  - Improved Mojo::Reactor::EV responsiveness.
  - Fixed IDNA support for CONNECT requests.
  - Fixed "0" value bug in Mojo::Message::Request.

4.84  2014-02-22
  - Added remaining attribute to Mojo::IOLoop::Delay.
  - Added data and pass methods to Mojo::IOLoop::Delay.
  - Improved Mojo::Exception context detection to better line up with user
    expectations.

4.83  2014-02-19
  - Improved Mojo::JSON to handle encoding errors more gracefully.
  - Fixed line numbers in Mojo::JSON error messages.

4.82  2014-02-19
  - Added decode_json and encode_json functions to Mojo::JSON.
  - Added data attribute to Mojo::JSON::Pointer.
  - Fixed bug in "user_agent_online.t".
  - Fixed small decoding bug in Mojo::JSON.

4.81  2014-02-15
  - Added direct array access for child nodes to Mojo::DOM.
  - Improved Mojolicious::Routes::Pattern to normalize more route variations.
  - Improved routes command to show which routes are using certain features
    with flags.

4.80  2014-02-13
  - Merged Mojo::DOM::Node into Mojo::DOM.
  - Added next_sibling and previous_sibling methods to Mojo::DOM.
  - Added last method to Mojo::Collection.
  - Improved many methods in Mojo::DOM to work with all node types.
  - Improved Mojo::DOM::HTML to handle slashes between attributes more
    gracefully.
  - Fixed list parsing bug in Mojo::DOM::HTML.

4.79  2014-02-11
  - Improved not found page to show request information and the exact path used
    for route matching.

4.78  2014-02-08
  - Deprecated Mojo::Util::get_line.
  - Fixed ";" handling in Mojo::Parameters to be compliant with the HTML Living
    Standard.
  - Fixed case-sensitivity bug in Mojolicious::Types.

4.77  2014-02-06
  - Deprecated Mojo::DOM::text_after and Mojo::DOM::text_before in favor of
    Mojo::DOM::contents.
  - Deprecated Mojo::DOM::content_xml and Mojo::DOM::replace_content in favor
    of Mojo::DOM::content.
  - Deprecated Mojo::DOM::to_xml in favor of Mojo::DOM::to_string.
  - Added wrap_content method to Mojo::DOM.
  - Added tablify function to Mojo::Util.
  - Improved wrap method in Mojo::DOM to allow wrapping of the root node.

4.76  2014-02-04
  - Added wrap method to Mojo::DOM.
  - Updated IO::Socket::IP requirement to 0.20 for certain bug fixes.
  - Improved Mojo::DOM::HTML to generate better HTML.

4.75  2014-02-02
  - Fixed and re-added support for permessage-deflate WebSocket compression.
    (Mikey, sri)

4.74  2014-02-02
  - Added all_contents method to Mojo::DOM.
  - Removed support for permessage-deflate WebSocket compression, since there
    have been too many problems with Chrome.

4.73  2014-02-01
  - Improved xml_escape performance significantly.
  - Improved html_unescape and url_unescape performance.
  - Fixed Mojo::UserAgent::Transactor to handle redirects more like most common
    browsers.

4.72  2014-01-29
  - Added accepts, template_for and template_handler methods to
    Mojolicious::Renderer.
  - Added accepts helper to Mojolicious::Plugin::DefaultHelpers.
  - Added before_render hook.
  - Fixed bug in Mojo::Transaction::WebSocket that prevented decompression
    errors from being handled gracefully.

4.71  2014-01-28
  - Fixed a few compression bugs in Mojo::Transaction::WebSocket and
    Mojo::Content.

4.70  2014-01-26
  - Added extract_usage method to Mojolicious::Command.
  - Added unindent method to Mojo::ByteStream.
  - Added unindent function to Mojo::Util.
  - Updated jQuery to version 2.1.
  - Improved all built-in commands to show usage information in their SYNOPSIS
    sections.
  - Improved tag helpers to make data attributes more convenient. (ravengerUA)
      %= tag 'div', data => {my_id => 1, Name => 'test'} => 'some content'
    is equivalent to
      %= tag 'div', data-my-id => 1, data-name => 'test' => 'some content'
  - Fixed indentation of code in documentation browser.

4.69  2014-01-24
  - Improved router to allow format detection for bridges.

4.68  2014-01-22
  - Added module Mojo::DOM::Node.
  - Added contents and node methods to Mojo::DOM.
  - Removed deprecated http_proxy, https_proxy, name and no_proxy attributes
    from Mojo::UserAgent.
  - Removed deprecated app, app_url, detect_proxy and need_proxy methods from
    Mojo::UserAgent.
  - Improved router to allow placeholders anywhere in a pattern to become
    optional.
      "get '/foo/:bar/baz' => {bar => 'bar'};" now matches "/foo/baz"
      "get '/foo(:bar)baz' => {bar => 'bar'};" now matches "/foobaz"
  - Improved request_ok method in Test::Mojo to handle WebSocket handshakes.
  - Improved Mojo::IOLoop::Server to use address and port for descriptor
    inheritance.
  - Improved list of available commands to be alphabetical. (jberger)
  - Fixed select_field helper to be nondestructive.
  - Fixed XML semantics bug in Mojo::DOM::HTML.

4.67  2014-01-11
  - Added history and max_history_size attributes to Mojo::Log.
  - Improved exception and not found pages with log messages.
  - Improved exception page with more information.
  - Improved not found page with a more generic message.
  - Improved inline templates to use their checksum as name.

4.66  2014-01-04
  - Added success attribute to Test::Mojo.
  - Improved Mojo::DOM::CSS and Mojo::DOM::HTML performance.
  - Fixed XML detection bug in Mojo::DOM.
  - Fixed escaping bugs in Mojo::DOM::CSS.

4.65  2014-01-02
  - Deprecated use of hash references for optgroup generation with select_field
    helper in favor of Mojo::Collection objects.
  - Added b and c helpers to Mojolicious::Plugin::DefaultHelpers.
  - Fixed reference handling bug in Mojo::Collection.

4.64  2014-01-01
  - Fixed helper export bug in Mojolicious::Plugin::EPRenderer.

4.63  2013-12-19
  - Deprecated Mojolicious::secret in favor of Mojolicious::secrets.
  - Added support for rotating secrets.
  - Added secrets method to Mojolicious.

4.62  2013-12-17
  - Deprecated Mojo::URL::to_rel.

4.61  2013-12-16
  - Added select_one method to Mojo::DOM::CSS.
  - Improved performance of Mojo::DOM::at significantly.

4.60  2013-12-11
  - Improved Mojolicious::Validator::Validation to allow custom validation
    errors.

4.59  2013-12-04
  - Added CSRF protection support.
  - Added support for permessage-deflate WebSocket compression.
  - Added csrf_protect method to Mojolicious::Validator::Validation.
  - Added build_message method to Mojo::Transaction::WebSocket.
  - Added csrf_token attribute to Mojolicious::Validator::Validation.
  - Added compressed and context_takeover attributes to
    Mojo::Transaction::WebSocket.
  - Added csrf_token helper to Mojolicious::Plugin::DefaultHelpers.
  - Added csrf_field helper to Mojolicious::Plugin::TagHelpers.
  - Removed deprecated mode specific methods in application class.
  - Relicensed all artwork to CC-SA version 4.0.

4.58  2013-11-19
  - Improved IIS and WebSphere compatibility of Mojo::Message::Request.
  - Improved Mojo::Collection to allow join without arguments.
  - Improved Mojo::DOM::HTML performance.
  - Fixed recursion bug in Mojo::Reactor::EV where timers could run more than
    once.
  - Fixed a few "0" value bugs in Mojo::DOM::HTML.

4.57  2013-11-11
  - Improved compatibility with IO::Socket::SSL 1.957.
  - Fixed error event bug in Mojo::IOLoop::Delay.

4.56  2013-11-09
  - Fixed backspace escaping bug in Mojo::JSON. (ig3)

4.55  2013-11-07
  - Fixed Windows bug in "daemon.t".

4.54  2013-11-07
  - Added parts attribute to Mojo::Home.
  - Fixed keep alive connection timeout bug in Mojo::UserAgent.
  - Fixed support for links within a page in Mojolicious::Plugin::PODRenderer.
  - Fixed home detection bug in Mojo.

4.53  2013-10-30
  - Fixed a few unsubscribe and error event bugs in Mojo::EventEmitter.

4.52  2013-10-29
  - Improved Mojo::EventEmitter to allow unhandled error events to be fatal.
    (powerman, sri)

4.51  2013-10-28
  - Added tag_with_error helper to Mojolicious::Plugin::TagHelpers.
  - Improved .ep template performance significantly, the number of helpers no
    longer has any effect. (jberger, sri)
  - Improved form_for performance.
  - Improved built-in templates with documentation search.
  - Fixed template inheritance bug in include helper.
  - Fixed a few multipart form handling bugs.

4.50  2013-10-22
  - Deprecated Mojo::UserAgent::app in favor of Mojo::UserAgent::Server::app.
  - Deprecated Mojo::UserAgent::app_url in favor of
    Mojo::UserAgent::Server::url.
  - Deprecated Mojo::UserAgent::detect_proxy in favor of
    Mojo::UserAgent::Proxy::detect.
  - Deprecated Mojo::UserAgent::http_proxy in favor of
    Mojo::UserAgent::Proxy::http.
  - Deprecated Mojo::UserAgent::https_proxy in favor of
    Mojo::UserAgent::Proxy::https.
  - Deprecated Mojo::UserAgent::no_proxy in favor of
    Mojo::UserAgent::Proxy::not.
  - Deprecated Mojo::UserAgent::need_proxy in favor of
    Mojo::UserAgent::Proxy::is_needed.
  - Deprecated Mojo::UserAgent::name in favor of
    Mojo::UserAgent::Transactor::name.
  - Added modules Mojo::UserAgent::Proxy and Mojo::UserAgent::Server.
  - Added proxy and server attributes to Mojo::UserAgent.
  - Removed deprecated attrs method from Mojo::DOM.
  - Improved Mojo::Message to allow max_message_size check to be disabled.
  - Fixed small assignment bug in content helper.

4.49  2013-10-17
  - Added tls_ciphers option to Mojo::IOLoop::Server::listen.
  - Added ciphers parameter to Mojo::Server::Daemon::listen.
  - Removed experimental status from Mojolicioua::Validator.
  - Removed experimental status from Mojolicioua::Validator::Validation.
  - Removed experimental status from validation method in
    Mojolicious::Controller.
  - Removed experimental status from validator attribute in Mojolicious.
  - Removed experimental status from validation helper in
    Mojolicious::Plugin::DefaultHelpers.
  - Fixed parameter bug in Mojolicious::Validator::Validation.

4.48  2013-10-16
  - Fixed support for Net::SSLeay 1.55.

4.47  2013-10-15
  - Added dumper function to Mojo::Util.
  - Improved compatibility with IO::Socket::SSL 1.955.
  - Improved IIS compatibility of Mojo::Server::CGI.

4.46  2013-10-11
  - Changed default name for generated applications from MyMojoliciousApp to
    MyApp.
  - Improved performance of route matching in Mojolicious::Routes::Pattern.
  - Improved HTML Living Standard compliance of Mojo::DOM::HTML.

4.45  2013-10-06
  - Changed return values of validation checks in Mojolicious::Validator.
  - Fixed unquoted attribute selector bug in Mojo::DOM::CSS.

4.44  2013-10-04
  - Removed experimental status from label_for helper.
  - Renamed regex check in Mojolicious::Validator to like.

4.43  2013-10-02
  - Removed generators for dynamic error messages from Mojolicious::Validator.

4.42  2013-09-30
  - Added EXPERIMENTAL form validation support.
  - Added EXPERIMENTAL modules Mojolicious::Validator and
    Mojolicious::Validator::Validation.
  - Added EXPERIMENTAL validation method to Mojolicious::Controller.
  - Added EXPERIMENTAL validator attribute to Mojolicious.
  - Added EXPERIMENTAL label_for and validation helpers to
    Mojolicious::Plugin::DefaultHelpers.

4.41  2013-09-22
  - Improved documentation browser to be a little more RESTful.
  - Fixed flatten to work with older versions of Perl. (jamadam)

4.40  2013-09-21
  - Added text method to Mojo::Message.
  - Added siblings method to Mojo::DOM.
  - Added flatten method to Mojo::Collection.
  - Improved documentation browser with source links.
  - Fixed smart whitespace trimming bug in Mojo::DOM.
  - Fixed table parsing bug in Mojo::DOM::HTML.
  - Fixed bug in Mojolicious::Types where the txt MIME type did not specify a
    charset.

4.39  2013-09-17
  - Improved HTML5.1 compliance of Mojo::DOM::HTML.

4.38  2013-09-16
  - Added is_binary method to Mojo::Loader.
  - Fixed support for binary files in inflate command.
  - Fixed stylesheet helper not to enforce a media attribute.

4.37  2013-09-13
  - Improved design of built-in templates.

4.36  2013-09-12
  - Added match method to Mojo::DOM.
  - Added match method to Mojo::DOM::CSS.
  - Improved ancestors and children methods in Mojo::DOM to support all CSS
    selectors.
  - Improved syntax highlighting in documentation browser.
  - Improved compatibility with different object systems.

4.35  2013-09-10
  - Added origin attribute to Mojo::Cookie::Response.
  - Fixed RFC 6265 compliance bugs in Mojo::Cookie::Request,
    Mojo::Cookie::Response and Mojo::UserAgent::CookieJar.

4.34  2013-09-08
  - Fixed portability bug in SO_REUSEPORT tests.

4.33  2013-09-07
  - Fixed portability bug in Mojo::IOLoop::Delay.

4.32  2013-09-06
  - Added error event to Mojo::IOLoop::Delay.

4.31  2013-09-04
  - Deprecated mode specific methods in application class.
      sub production_mode {...}
    becomes (in the startup method)
      if ($app->mode eq 'production') {...}

4.30  2013-09-01
  - Fixed memory leak in Mojolicious::Routes.

4.29  2013-08-31
  - Fixed automatic rendering to work after non-blocking operations have been
    performed in bridges.

4.28  2013-08-29
  - Added support for non-blocking operations in bridges to
    Mojolicious::Routes.
  - Added continue method to Mojolicious::Controller.
  - Added continue method to Mojolicious::Routes.
  - Added current attribute to Mojolicious::Routes::Match.
  - Fixed automatic rendering bug in Mojolicious::Routes.

4.27  2013-08-26
  - Added acceptors attribute to Mojo::Server::Daemon.
  - Added handle method to Mojo::IOLoop::Server.
  - Added -V option to eval command.
  - Added reuse option to Mojo::IOLoop::Server::listen.
  - Added reuse parameter to Mojo::Server::Daemon::listen.
  - Fixed console message bug in Mojo::Server::Daemon.
  - Fixed SNI bug in online tests.

4.26  2013-08-18
  - Fixed support for Netscape cookies in Mojo::Cookie::Response.
  - Fixed element method bug in Mojo::Collection.

4.25  2013-08-17
  - Added support for calling element methods to Mojo::Collection.
  - Added compact method to Mojo::Collection.

4.24  2013-08-08
  - Added ancestors method to Mojo::DOM.
  - Fixed bug where Mojo::IOLoop::Stream timeout was not always available.

4.23  2013-08-01
  - Added redirects method to Mojo::Transaction::HTTP.

4.22  2013-07-30
  - Improved Mojo::Server to use FindBin more defensively.
  - Fixed empty attribute bug in Mojo::DOM::CSS.
  - Fixed partial route handling in routes command.

4.21  2013-07-29
  - Added strip method to Mojo::DOM.
  - Fixed return values of remove and replace methods in Mojo::DOM.

4.20  2013-07-28
  - Deprecated Mojo::DOM::attrs in favor of Mojo::DOM::attr.
  - Improved Mojo::UserAgent connection management to be fork-safe.

4.19  2013-07-21
  - Improved invalid tag handling in Mojo::DOM::HTML.

4.18  2013-07-08
  - Added --mode option to Morbo.
  - Fixed bug in Mojo::UserAgent where not all 2xx responses would be accepted
    for CONNECT requests.

4.17  2013-07-04
  - Updated jQuery to version 2.0.3.
  - Improved Mojo::IOLoop::Server to use Perfect Forward Secrecy for TLS.
  - Fixed Mojo::Transaction::WebSocket to generate RFC 6455 compliant
    Sec-WebSocket-Key headers. (josh)
  - Fixed bug where not all uppercase methods were hidden from the router.

4.16  2013-06-19
  - Improved Perl 5.10.x and 5.12.x compatibility. (trinitum)

4.15  2013-06-18
  - Added around_action hook.
  - Improved ojo to make the current controller object available to actions as
    $_. (jberger, sri)
  - Fixed a few error reporting bugs in Mojo::IOLoop::Client and
    Mojo::IOLoop::Server.
  - Fixed small emit_chain bug in Mojolicious::Plugins.

4.14  2013-06-10
  - Improved url_for performance slightly.
  - Fixed bug where match attribute and render_later method were not hidden
    from the router.

4.13  2013-06-09
  - Replaced ua method in Mojolicious::Controller with a helper.
  - Fixed url_for support for absolute URLs without scheme or authority.
    (bduggan, sri)

4.12  2013-06-07
  - Improved Mojo::Message::Request to allow a few more ASCII characters in
    URLs.

4.11  2013-06-03
  - Added allow and append methods to Mojo::Headers.
  - Added split_header function to Mojo::Util.
  - Fixed cookie quoting bugs.
  - Fixed a few small boundary and charset detection bugs in Mojo::Content.
  - Fixed a few small filename detection bugs in Mojo::Message.
  - Fixed small quality detection bug in Mojolicious::Types.

4.10  2013-06-01
  - Added link and vary methods to Mojo::Headers.

4.09  2013-05-31
  - Updated jQuery to version 2.0.2.
  - Increased default max_message_size from 5MB to 10MB in Mojo::Message.

4.08  2013-05-30
  - Improved Mojo::Message::Request to allow curly brackets in URLs.
  - Improved HMAC-SHA1 performance in Mojo::Util.

4.07  2013-05-26
  - Updated jQuery to version 2.0.1.
  - Fixed format handling in routes command.

4.06  2013-05-25
  - Fixed Windows bug in "log.t".

4.05  2013-05-24
  - Fixed encoding bug in Mojo::Log.

4.04  2013-05-23
  - Added WebSocket subprotocol support to Mojo::UserAgent::Transactor.

4.03  2013-05-21
  - Fixed redirect support in get command.

4.02  2013-05-20
  - Fixed extends, layout and title helpers not to generate unnecessary log
    messages.

4.01  2013-05-19
  - Fixed small drain event bug in Mojo::IOLoop::Stream. (ChinaXing)

4.0  2013-05-15
  - Code name "Top Hat", this is a major release.
  - Added simple JSON serialization and deserialization support to
    Mojo::Transaction::WebSocket.
  - Added json event to Mojo::Transaction::WebSocket.
  - Added render_maybe method to Mojolicious::Controller.
  - Added again method to Mojo::Reactor, Mojo::Reactor::Poll and
    Mojo::Reactor::EV.
  - Added is_empty method to Mojo::Transaction::HTTP.
  - Added close_gracefully method to Mojo::IOLoop::Stream.
  - Changed Mojolicious default secret to the application moniker to make it
    slightly more secure.
  - Changed types in Mojolicious::Types to consistently use arrays.
  - Changed heuristics for number detection in Mojo::JSON to better line up
    with user expectations.
  - Changed render and render_static methods in Mojolicious::Controller to call
    render_not_found if no response could be generated.
  - Removed callback support from body method in Mojo::Message.
  - Removed Mojolicious::Plugin::PoweredBy and
    Mojolicious::Plugin::RequestTimer.
  - Removed pair_separator attribute from Mojolicious::Parameters.
  - Removed data attribute from Mojo::URL.
  - Removed captures attribute from Mojolicious::Routes::Match.
  - Removed charset attribute from Mojo::DOM::HTML.
  - Removed charset method from Mojo::DOM.
  - Removed render_data, render_json, render_partial and render_text methods
    from Mojolicious::Controller.
  - Removed json_content_is method from Test::Mojo.
  - Removed has_leftovers method from Mojo::Content.
  - Removed is_chunked, is_dynamic, is_multipart, has_leftovers, leftovers,
    write and write_chunk methods from Mojo::Message.
  - Removed hmac_md5_sum method from Mojo::ByteStream.
  - Removed hmac_md5_sum function from Mojo::Util.
  - Removed memorize helper.
  - Removed deprecated end method from Mojo::IOLoop::Delay.
  - Removed deprecated build_form_tx, build_json_tx, post_form and post_json
    methods from Mojo::UserAgent.
  - Removed deprecated form and json methods from Mojo::UserAgent::Transactor.
  - Removed deprecated post_form_ok and post_json_ok methods from Test::Mojo.
  - Removed deprecated f and n functions from ojo.
  - Removed deprecated after_static_dispatch hook.
  - Renamed shape_match method in Mojolicious::Routes::Pattern to
    match_partial.
  - Reduced idle CPU usage of Mojo::IOLoop.
  - Increased default lock_timeout from 0.5 to 1 second in
    Mojo::Server::Prefork and Mojo::Server::Hypnotoad.
  - Improved Mojo::IOLoop performance significantly and reduced CPU usage when
    managing more than 10k concurrent connections.
  - Improved Mojolicious to be able to detect the current operating mode from
    the PLACK_ENV environment variable.
  - Improved Mojolicious to not trap exceptions if the default exception
    handling has been deactivated.
  - Improved json_is and json_message_is methods in Test::Mojo by making the
    JSON Pointer optional. (jberger)
  - Improved renderer performance.
  - Improved Mojo::DOM::HTML performance.
  - Improved Mojo::Reactor::Poll performance.
  - Improved html_unescape performance in Mojo::Util.
  - Improved Mojolicious::Plugin::EPLRenderer to cache templates more
    efficiently.
  - Fixed Perl 5.17.11+ compatibility.
  - Fixed Mojo::JSON to encode "inf" and "nan" values as strings. (chansen)
  - Fixed a few authority and rendering bugs in Mojo::URL.
  - Fixed layout bugs in Mojolicious::Renderer.
  - Fixed support for HEAD request method in Mojo::Server::CGI and
    Mojo::Server::PSGI.
  - Fixed small line directive bug in Mojo::Template.
  - Fixed small limit bug in Mojo::Message.

3.97  2013-04-25
  - Added data attribute to Mojo::URL.
  - Improved compatibility with IO::Socket::SSL 1.87.
  - Improved Test::Mojo diagnostics messages.
  - Fixed a few small timing bugs in WebSocket tests.

3.96  2013-04-22
  - Updated jQuery to version 2.0.
  - Updated prettify.js to version 4-Mar-2013.
  - Improved Mojo::URL to be able to contain scheme data for unknown schemes.
  - Improved form content generator for GET and HEAD requests. (jberger)
  - Improved default descriptions in Test::Mojo.
  - Fixed host normalization bug in Mojo::URL.
  - Fixed small html_unescape bug in Mojo::Util.
  - Fixed small encoding bug in routes command.
  - Fixed a few small clone bugs.
  - Fixed a few small redirect and proxy connect bugs in
    Mojo::UserAgent::Transactor.
  - Fixed a few small method handling bugs in Mojo::Transaction::HTTP.

3.95  2013-04-12
  - Added finished_ok method to Test::Mojo.
  - Removed deprecated slurp_rel_file method from Mojo::Home.
  - Removed deprecated html_escape function from Mojo::Util.
  - Improved Mojo::Transaction::WebSocket with support for status codes and
    reasons.
  - Fixed message size limit bug in Mojo::Transaction::WebSocket.
  - Fixed a few small timing bugs in Mojo::Server::Daemon.
  - Fixed small description bug in Test::Mojo.

3.94  2013-04-08
  - Added is_hidden method to Mojolicious::Routes.
  - Removed deprecated start method from Mojolicious::Commands.
  - Fixed small selector bug in get command.
  - Fixed small anchor bug in Mojolicious::Plugin::PODRenderer.

3.93  2013-04-05
  - Deprecated Mojo::IOLoop::Delay::end in favor of generated callbacks.
  - Improved Mojo::IOLoop::Delay to be able to generate callbacks that can
    capture all arguments.
  - Improved prefork command to allow -a and -L values below 1 second.
  - Fixed multiple timing bugs in Mojo::IOLoop::Delay.

3.92  2013-04-03
  - Added monotonic clock support to make Mojolicious more resilient to time
    jumps.
  - Added steady_time function to Mojo::Util.
  - Removed deprecated namespace method from Mojolicious::Routes.
  - Removed deprecated base_tag helper.
  - Improved WebSocket send method to stringify objects. (jberger)
  - Improved version command to show required versions of optional
    dependencies.
  - Fixed RFC 6901 compliance of Mojo::JSON::Pointer. (jberger, sri)
  - Fixed a few small Unicode bugs in get command.

3.91  2013-03-17
  - Improved bad charset handling in Mojo::DOM::HTML.
  - Fixed HTTPS proxy support for blocking requests in Mojo::UserAgent.
  - Fixed support for RFC 2817 in Mojo::Message::Request.
  - Fixed whitespace bug in Mojo::DOM::HTML.
  - Fixed proxy detection bug in get command.

3.90  2013-03-14
  - Added direct array access for parsed parameters to Mojo::Parameters.
  - Added direct array access for path parts to Mojo::Path.
  - Improved dumper helper to sort hash keys.
  - Fixed bug in Mojo::Headers that prevented multiline headers from being
    parsed correctly.
  - Fixed multiline header support in hash representation of Mojo::Headers.
  - Fixed cloning bug in Mojo::Headers.

3.89  2013-03-04
  - Fixed installable scripts to not "use lib", which sadly breaks updated
    dual-life modules. (jberger, sri)
  - Fixed bug preventing delayed normalization for reused Mojo::Path objects.
  - Fixed path matching bug in Mojo::Path.

3.88  2013-03-03
  - Improved Mojo::Path to delay normalization as long as possible.
  - Improved Mojo::Path performance.
  - Fixed small domain detection bug in Mojo::UserAgent::CookieJar.

3.87  2013-02-23
  - Added deprecated function to Mojo::Util. (marcus)
  - Removed deprecated render_content helper.

3.86  2013-02-22
  - Welcome to the Mojolicious core team Joel Berger.
  - Improved portability of Mojo::Asset::File tests.
  - Fixed path generation bug in Mojolicious::Routes::Pattern. (jberger)
  - Fixed small domain detection bug in Mojo::UserAgent::CookieJar.
    (dione, sri)
  - Fixed comment lines in Mojo::Template to cover the whole line.

3.85  2013-02-13
  - Deprecated Mojo::UserAgent::build_form_tx in favor of
    Mojo::UserAgent::build_tx.
  - Deprecated Mojo::UserAgent::build_json_tx in favor of
    Mojo::UserAgent::build_tx.
  - Deprecated Mojo::UserAgent::post_form in favor of Mojo::UserAgent::post.
  - Deprecated Mojo::UserAgent::post_json in favor of Mojo::UserAgent::post.
  - Deprecated Mojo::UserAgent::Transactor::form in favor of
    Mojo::UserAgent::Transactor::tx.
  - Deprecated Mojo::UserAgent::Transactor::json in favor of
    Mojo::UserAgent::Transactor::tx.
  - Deprecated Test::Mojo::post_form_ok in favor of Test::Mojo::post_ok.
  - Deprecated Test::Mojo::post_json_ok in favor of Test::Mojo::post_ok.
  - Deprecated ojo::f in favor of ojo::p.
  - Deprecated ojo::n in favor of ojo::p.
  - Added support for pluggable content generators to
    Mojo::UserAgent::Transactor. (judofyr, sri)
  - Added generators attribute to Mojo::UserAgent::Transactor.
  - Added add_generator method to Mojo::UserAgent::Transactor.
  - Updated jQuery to version 1.9.1.
  - Fixed memory leak in development not found page.
  - Fixed custom temporary directory bug in Mojo::Asset::File.

3.84  2013-01-30
  - Deprecated after_static_dispatch hook in favor of before_routes.
  - Added after_static hook.
  - Fixed small file descriptor leak in Mojo::UserAgent.

3.83  2013-01-27
  - Moved bundled static files to mojo directory.
  - Fixed small Getopt::Long configuration bug in Mojolicious::Commands.

3.82  2013-01-18
  - Fixed Windows bugs in tests. (kmx, sri)

3.81  2013-01-17
  - Added modules Mojo::Server::Prefork and Mojolicious::Command::prefork.
  - Added lookup method to Mojolicious::Routes.
  - Updated jQuery to version 1.9.
  - Improved url_for performance significantly.
  - Improved Mojo::Server::Hypnotoad to be a small wrapper around
    Mojo::Server::Prefork.
  - Fixed small memory leak in Hypnotoad that only shows when Perl is compiled
    with -DPERL_USE_SAFE_PUTENV. (lewoberst)

3.80  2013-01-15
  - Deprecated testing WebSocket messages without calling
    Test::Mojo::message_ok.
  - Deprecated Mojo::Util::html_escape in favor of Mojo::Util::xml_escape.
  - Deprecated Mojo::ByteStream::html_escape in favor of
    Mojo::ByteStream::xml_escape.
  - Deprecated Mojo::Home::slurp_rel_file in favor of Mojo::Util::slurp.
  - Added message attribute to Test::Mojo.
  - Added json_message_has, json_message_hasnt and message_ok methods to
    Test::Mojo.
  - Fixed support for multi-character entities in Mojo::Util.

3.79  2013-01-13
  - Fixed small domain detection bug in Mojo::UserAgent::CookieJar.

3.78  2013-01-13
  - Added to_dir method to Mojo::Path.
  - Fixed domain and path detection bugs in Mojo::UserAgent::CookieJar.
  - Fixed IDNA support in Mojo::UserAgent::CookieJar.

3.77  2013-01-12
  - Added support for advanced binary WebSocket message tests to Test::Mojo.
  - Added binary and text events to Mojo::Transaction::WebSocket.
  - Added json_message_is method to Test::Mojo.
  - Added j function to Mojo::JSON.
  - Updated a few example scripts.
  - Fixed aliasing bug in Mojo::EventEmitter.
  - Fixed WebSocket cookie bug in Mojo::UserAgent.
  - Fixed small upgrade bugs in Mojo::UserAgent::Transactor.

3.76  2013-01-10
  - Added support for multiple uploads sharing the same name to
    Mojo::UserAgent::Transactor.
  - Improved performance and memory usage of Mojo::EventEmitter.
  - Fixed support for multiple uploads in Mojolicious::Controller.

3.75  2013-01-08
  - Added to_route method to Mojo::Path.
  - Improved router performance slightly.

3.74  2013-01-07
  - Fixed bug where Mojolicious::Lite applications in modules would generate
    the wrong moniker.

3.73  2013-01-06
  - Deprecated Mojolicious::Commands::start in favor of
    Mojolicious::Commands::start_app.
  - Added moniker attribute to Mojolicious.
  - Added after_render hook.
  - Improved name detection in Mojolicious::Plugin::Config.

3.72  2013-01-05
  - Deprecated base_tag helper.

3.71  2013-01-02
  - Modernized ".travis.yml".
  - Improved Mojo::EventEmitter to warn about unhandled error events.
  - Improved Mojo::UserAgent to warn more often about failed events.
  - Improved monkey_patch to patch multiple functions at once. (jberger)
  - Fixed small memory leak in Mojo::DOM.

3.70  2012-12-23
  - Added accept_interval setting to Hypnotoad.
  - Reduced idle CPU usage of Mojo::Reactor::Poll.
  - Improved Mojo::Server to die more gracefully if an application class could
    not be found.

3.69  2012-12-20
  - Deprecated Mojolicious::Routes::namespace in favor of
    Mojolicious::Routes::namespaces.
  - Added color_field helper to Mojolicious::Plugin::TagHelpers.
  - Added date_field helper to Mojolicious::Plugin::TagHelpers.
  - Added datetime_field helper to Mojolicious::Plugin::TagHelpers.
  - Added email_field helper to Mojolicious::Plugin::TagHelpers.
  - Added month_field helper to Mojolicious::Plugin::TagHelpers.
  - Added number_field helper to Mojolicious::Plugin::TagHelpers.
  - Added range_field helper to Mojolicious::Plugin::TagHelpers.
  - Added search_field helper to Mojolicious::Plugin::TagHelpers.
  - Added tel_field helper to Mojolicious::Plugin::TagHelpers.
  - Added time_field helper to Mojolicious::Plugin::TagHelpers.
  - Added url_field helper to Mojolicious::Plugin::TagHelpers.
  - Added week_field helper to Mojolicious::Plugin::TagHelpers.
  - Improved Mojo::Base to use utf8.

3.68  2012-12-16
  - Added monkey_patch function to Mojo::Util.
  - Added ".travis.yml".
  - Modernized ".gitignore".
  - Updated jQuery to version 1.8.3.
  - Converted README to markdown.
  - Fixed small export bug in Mojolicious::Lite. (jberger)

3.67  2012-12-15
  - Added support for MIME type prioritization to Mojolicious::Types.
  - Improved respond_to to prioritize multiple MIME types if the
    X-Requested-With header is set to the value "XMLHttpRequest".

3.66  2012-12-14
  - Added request_ok method to Test::Mojo.
  - Fixed multipart boundary detection bug in Mojo::Content.
  - Fixed format regex generation bug in Mojolicious::Routes::Pattern.

3.65  2012-12-09
  - Added upgrade method to Mojo::UserAgent::Transactor.
  - Added is_range method to Mojo::Asset.
  - Fixed parameter replacement bug in Mojo::Parameters. (alexbyk, sri)
  - Fixed small paragraph bug in Mojo::DOM::HTML.

3.64  2012-12-01
  - Fixed bug where Mojo::UserAgent::Transactor would escape
    Content-Disposition values.

3.63  2012-11-28
  - Added support for smooth restarting to Morbo.
  - Added acceptor method to Mojo::IOLoop.
  - Added stop method to Mojo::Server::Daemon.
  - Improved memory usage of chunked transfer encoding parser in Mojo::Content.

3.62  2012-11-26
  - Improved compatibility with IO::Socket::SSL 1.79.
  - Improved encode/decode performance in Mojo::Util by using a cache.
  - Fixed clone bugs in Mojo::URL.

3.61  2012-11-25
  - Added protocol method to Mojo::URL.
  - Added charset attribute to Mojo::Path.
  - Improved support for relative redirects in Mojo::UserAgent::Transactor.
  - Fixed clone bugs in Mojo::Parameters and Mojo::URL.
  - Fixed case-sensitivity bugs in Mojo::UserAgent::Transactor.

3.60  2012-11-22
  - Added unexpected event to Mojo::Transaction::HTTP.
  - Fixed Mojo::UserAgent to ignore unexpected 1xx responses.

3.59  2012-11-20
  - Fixed memory leak in Mojo::Message::Request.
  - Fixed keep-alive bug in Mojo::Server::Daemon.

3.58  2012-11-19
  - Fixed state bugs in Mojo::Content::MultiPart.
  - Fixed Mojo::UserAgent to remove codes from parser errors.

3.57  2012-11-12
  - Deprecated Mojo::Exception::raw_message.
  - Improved error message accuracy in Mojo::Template by using line directives.
  - Improved performance of contains method in Mojo::Asset::File by 100%.
  - Fixed range bug in Mojo::Asset::Memory.

3.56  2012-11-09
  - Improved performance of contains method in Mojo::Asset::File significantly.
  - Fixed offset bug in Mojo::Asset::File.

3.55  2012-11-08
  - Added gzip compression support to Mojo::UserAgent.
  - Added is_compressed method to Mojo::Content.
  - Fixed bug that prevented around_dispatch hooks from working correctly in
    embedded applications.
  - Fixed small bug where "chunked" would not always be the default transfer
    encoding.

3.54  2012-11-01
  - Added next and previous methods to Mojo::DOM.

3.53  2012-10-31
  - Replaced Mojolicious::Guides::CodingGuidelines with
    Mojolicious::Guides::Contributing.

3.52  2012-10-26
  - Added boolean shortcut support to Mojo::JSON.
  - Added escape attribute to Mojo::Template. (jberger)
  - Added max_buffer_size attribute to Mojo::Content.
  - Added is_limit_exceeded method to Mojo::Content.

3.51  2012-10-23
  - Fixed multiple small context bugs.

3.50  2012-10-20
  - Improved option handling of all commands.

3.49  2012-10-19
  - Fixed % escaping bug in Mojo::Parameters. (dmw397)

3.48  2012-10-16
  - Improved Mojo::Content performance slightly.
  - Fixed memory leak in Mojo::Headers.

3.47  2012-10-13
  - Added all method to Mojo::UserAgent::CookieJar.
  - Fixed WebSocket bug in Mojo::Content.

3.46  2012-10-11
  - Improved router and renderer to allow CamelCase controllers.

3.45  2012-10-10
  - Added multi_accept attribute to Mojo::IOLoop.
  - Added multi_accept attribute to Mojo::IOLoop::Server.
  - Added multi_accept setting to Hypnotoad.
  - Relaxed comment handling in Mojo::DOM::HTML a little. (jberger)
  - Improved accept performance of all built-in web servers significantly.
  - Improved responsiveness of documentation browser.
  - Improved documentation browser CSS. (tempire)

3.44  2012-09-29
  - Improved html_escape to favor lowercase entities. (judofyr)
  - Improved javascript and stylesheet helpers to not generate type
    attributes.

3.43  2012-09-22
  - Updated jQuery to version 1.8.2.
  - Improved Hypnotoad to clean up old PID files containing a 0.
    (coffeemonster)

3.42  2012-09-16
  - Improved Hypnotoad to clean up old PID files.

3.41  2012-09-13
  - Improved Mojo::EventEmitter to warn about failed error events.
  - Improved resilience of Mojo::IOLoop exception handling.
  - Fixed small CGI bug.

3.40  2012-09-11
  - Fixed Perl 5.10.1 compatibility.
  - Fixed FindBin support in Mojolicious applications.
  - Fixed a few multipart bugs.

3.39  2012-09-10
  - Improved Mojo::URL and Mojo::Parameters performance.
  - Fixed support for query parameters in Mojolicious::Plugin::Charset.

3.38  2012-09-07
  - Added xor_encode method to Mojo::ByteStream.
  - Added xor_encode function to Mojo::Util.
  - Fixed small xor_encode bug. (dod, crab)

3.37  2012-09-04
  - Added finish method to Mojo::Message.
  - Updated jQuery to version 1.8.1.
  - Fixed Mojo::Transaction to propagate connection close to Mojo::Message.
  - Fixed small state bug in Mojo::Transaction.

3.36  2012-08-30
  - Fixed small multipart bug.

3.35  2012-08-28
  - Deprecated Mojolicious::Controller::render_content in favor of content
    helper.
  - Improved Mojolicious::Plugin::Config to accept mode specific configuration
    files without a normal configuration file. (alexbyk, sri)

3.34  2012-08-24
  - Improved documentation.

3.33  2012-08-23
  - Improved Mojo::DOM::HTML to handle bad charsets more gracefully.

3.32  2012-08-20
  - Added event sequentialization support to delay method in Mojo::IOLoop.
    (judofyr, marcus, sri)
  - Added support for expiration session value to Mojolicious::Sessions.
  - Added steps method to Mojo::IOLoop::Delay. (judofyr, marcus, sri)
  - Added tap method to Mojo::Base.
  - Added squish method to Mojo::ByteStream.
  - Added squish function to Mojo::Util.
  - Fixed json_has method in Test::Mojo.
  - Fixed bug in Mojo::Log that prevented some message events from being
    emitted.
  - Fixed get command to allow ":" character in header values.
  - Fixed small class_to_file bug.
  - Fixed a few small namespace handling bugs.

3.31  2012-08-15
  - Added accept_charset, accept_encoding, content_encoding, origin and
    sec_websocket_extensions methods to Mojo::Headers.

3.30  2012-08-14
  - Added te method to Mojo::Headers.
  - Fixed small content encoding bug in Mojo::Message.

3.29  2012-08-13
  - Fixed small timing bugs in WebSocket and TLS tests.

3.28  2012-08-10
  - Added skip_body attribute to Mojo::Content.
  - Added is_empty method to Mojo::Message::Response.
  - Updated jQuery to version 1.8.
  - Improved Mojo::Base to assign names to generated subroutines.
  - Improved message parser performance slightly.
  - Fixed 1xx, 204 and 304 response support.

3.27  2012-08-09
  - Improved tests.

3.26  2012-08-09
  - Improved tests.

3.25  2012-08-08
  - Fixed cleanup bugs in Mojo::Server::Daemon and Mojo::UserAgent.

3.24  2012-08-08
  - Improved tests.

3.23  2012-08-07
  - Added appcache MIME type.

3.22  2012-08-06
  - Added mp4, ogg, ogv and webm MIME types.
  - Removed x- prefix from js and woff MIME types.
  - Fixed gz and xml MIME types.

3.21  2012-08-05
  - Fixed Perl 5.17.3+ compatibility.
  - Fixed small AUTOLOAD bug in Mojolicious::Lite.

3.20  2012-08-04
  - Added extract_start_line method to Mojo::Message, Mojo::Message::Request
    and Mojo::Message::Response.
  - Added get_start_line_chunk method to Mojo::Message::Request and
    Mojo::Message::Request.
  - Improved end method in Mojo::IOLoop::Delay to return the number of
    remaining events.

3.19  2012-08-03
  - Fixed dynamic content generation bug in Mojo::Message.
  - Fixed bug that prevented multiple anchors with the same name in
    Mojolicious::Plugin::PODRenderer.

3.18  2012-08-02
  - Fixed chunked transfer encoding bug in Mojo::Content.

3.17  2012-08-01
  - Fixed bug in after_static_dispatch hook that prevented custom responses.
  - Fixed bug that prevented conditions from generating responses.

3.16  2012-07-31
  - Fixed small memory leak in Mojolicious::Plugin::TagHelpers.

3.15  2012-07-28
  - Improved Mojo::Base to load IO::Handle.

3.14  2012-07-27
  - Improved documentation.

3.13  2012-07-24
  - Added multi-name support to param method in Mojolicious::Controller.
  - Added remove method to Mojo::DOM.
  - Improved RFC 3986 compliance of Mojo::Parameters.
  - Improved Mojolicious::Plugin::Config log messages. (jberger)
  - Fixed selector bug in dom method of Mojo::Message.
  - Fixed small charset bug in get command.

3.12  2012-07-20
  - Deprecated Mojo::Home::app_class.
  - Deprecated Mojo::IOLoop::client_class.
  - Deprecated Mojo::IOLoop::server_class.
  - Deprecated Mojo::IOLoop::stream_class.
  - Deprecated Mojo::Message::dom_class.
  - Deprecated Mojo::Message::json_class.
  - Added json method to Mojo::UserAgent::Transactor.
  - Added build_json_tx and post_json methods to Mojo::UserAgent.
  - Added post_json_ok method to Test::Mojo.
  - Added n function to ojo.
  - Improved text_field helper to always set the type attribute. (marty, sri)
  - Fixed file and content type detection bugs in Mojolicious::Static.
    (marty, sri)

3.11  2012-07-19
  - Added or method to Test::Mojo. (moritz, sri)
  - Added file and serve_asset methods to Mojolicious::Static.
  - Improved default descriptions for many methods in Test::Mojo.
  - Improved Mojo::Cache performance. (nic)
  - Fixed a few small encoding bugs in Test::Mojo.

3.10  2012-07-17
  - Fixed small bug in Mojo::Asset::File.

3.09  2012-07-16
  - Added spurt function to Mojo::Util.
  - Added spurt method to Mojo::ByteStream.

3.08  2012-07-14
  - Fixed small Mojo::Template bug.

3.07  2012-07-13
  - Improved template error messages for generator commands and configuration
    files.
  - Fixed small bug in Mojolicious::Plugin::EPRenderer that prevented code to
    be added to templates.
  - Fixed small bug in Mojolicious::Plugin::JSONConfig that prevented code to
    be added to configuration files.

3.06  2012-07-11
  - Added tls_verify option to Mojo::IOLoop::Server::listen. (scottw)
  - Added verify parameter to Mojo::Server::Daemon::listen. (scottw)
  - Fixed small bug in Mojo::UserAgent that prevented port reuse.

3.05  2012-07-08
  - Reduced default graceful_timeout from 30 to 20 seconds in
    Mojo::Server::Hypnotoad.
  - Fixed small initialization bug in Mojo::IOLoop::Stream.

3.04  2012-07-07
  - Improved Mojo::IOLoop performance by reducing stream timeout precision
    from 0.025 to 0.5 seconds.

3.03  2012-07-06
  - Improved load balancing between Hypnotoad worker processes.
  - Improved Hypnotoad log messages.
  - Fixed default format handling bug in render_exception and render_not_found.
  - Fixed small namespace detection bug in Mojo::DOM.
  - Fixed small session reset bug in Test::Mojo.

3.02  2012-07-03
  - Added pluck and uniq methods to Mojo::Collection.
  - Added regular expression support to first and grep methods in
    Mojo::Collection.
  - Fixed JSON Pointer escaping.
  - Fixed small text and attribute extraction bugs in Mojo::DOM.
  - Fixed small inconsistency between routes and static dispatchers.

3.01  2012-07-01
  - Improved CSS of built-in templates.

3.0  2012-06-25
  - Code name "Rainbow", this is a major release.
  - Removed Mojolicious::Plugin::I18N so it can be maintained as a separate
    distribution.
  - Removed app_class attribute from Mojo::Server.
  - Removed qp_decode and qp_encode methods from Mojo::ByteStream.
  - Removed qp_decode and qp_encode functions from Mojo::Util.
  - Removed render_to_file and render_file_to_file methods from Mojo::Template.
  - Renamed Mojo::CookieJar to Mojo::UserAgent::CookieJar.
  - Renamed Mojo::Command to Mojolicious::Command.
  - Renamed format, reqs, symbol_start and symbols attributes in
    Mojolicious::Routes::Pattern to format_regex, constraints,
    placeholder_start and placeholders.
  - Merged get_all_data and get_data methods from Mojo::Command into data
    method in Mojo::Loader.
  - Moved class_to_file and class_to_path methods from Mojo::Command to
    Mojo::Util.
  - Updated IO::Socket::SSL requirement to 1.75 for IO::Socket::IP support.
  - Switched back from IO::Socket::INET6 to IO::Socket::IP for IPv6 support.
  - Switched from HMAC-MD5 to HMAC-SHA1 for signed cookies.
  - Added slurp function to Mojo::Util.
  - Added slurp method to Mojo::ByteStream.
  - Added j and r functions to ojo. (sharifulin, sri)
  - Added accept_interval attribute to Mojo::IOLoop.
  - Added support for new HTTP status code.
  - Modernized ".perltidyrc".
  - Improved Mojo::IOLoop::Server to prioritize RC4 cipher, which mitigates the
    BEAST attack. (Danny Thomas)
  - Improved not found page to highlight custom route names.
  - Improved to method in Mojolicious::Routes::Route to give easier access to
    default parameters.
  - Improved message parser performance slightly.
  - Fixed bug that prevented sessions from working in embedded applications.
  - Fixed JSON Pointer escaping.
  - Fixed small JSON Pointer bug in get command. (avkhozov)
  - Fixed small application initialization bug in Mojo::Server.

2.98  2012-05-30
  - Switched from IO::Socket::IP to IO::Socket::INET6 for IPv6 support.
  - Improved IPv6 exception handling in Mojo::IOLoop::Client.
  - Fixed array appending bug in Mojo::Parameters.

2.97  2012-05-28
  - Added workaround to make IO::Socket::SSL work with IO::Socket::IP.
  - Removed Bonjour support.
  - Fixed bug that prevented Test::Mojo from working with normal Mojolicious
    applications that use Mojolicious::Plugin::Config.
  - Fixed a few small Unicode bugs in documentation.

2.96  2012-05-21
  - Added merge method to Mojo::Path.
  - Fixed small memory leak in Mojolicious.
  - Fixed small bug that prevented already prepared IO::Socket::SSL handles to
    be used by Mojo::UserAgent.
  - Fixed small Mojo::URL and Mojo::Path stringification bugs.

2.95  2012-05-10
  - Fixed bug that caused inactivity timeouts to be logged too often.

2.94  2012-05-09
  - Added support for 308 redirects to Mojo::UserAgent.
  - Added support for new HTTP status codes.
  - Improved exception handling of all scripts.
  - Improved built-in web servers to log inactivity timeouts as debug messages
    instead of errors.
  - Fixed html_escape to always use entities with semicolon. (OlegG, crab)
  - Fixed typo in 414 status message.
  - Fixed small cookie formatting bug.
  - Fixed small bug in cookie parser.
  - Fixed small backlog bug in Mojo::Server::Daemon.

2.93  2012-05-05
  - Added remove method to Mojolicious::Routes::Route.
  - Improved 32-bit Perl support of Mojo::Transaction::WebSocket.
    (mikemagowan, sri)
  - Improved exception handling of application and configuration file loaders.
  - Improved exception handling of Mojolicious::Plugin::I18N.
  - Improved renderer log messages.
  - Fixed bug that prevented helper names from starting with "end". (Akron)
  - Fixed bug that prevented helper names from ending with "begin".
  - Fixed empty frame handling in Mojo::Transaction::WebSocket.
  - Fixed small rendering bug in Mojolicious::Plugin::PODRenderer.
  - Fixed small code generation bug in Mojolicious::Plugin::I18N.
  - Fixed small escaping bug in Mojo::URL.

2.92  2012-04-30
  - Added commands attribute to Mojolicious.
  - Fixed attribute namespace selector bugs in Mojo::DOM::CSS.

2.91  2012-04-26
  - Added cookies method to Mojo::Message.
  - Updated HTML5 entities in Mojo::Util.

2.90  2012-04-25
  - Fixed small JavaScript bug in Mojolicious::Plugin::PODRenderer.

2.89  2012-04-24
  - Made logo on built-in templates smaller.
  - Improved CSS of built-in templates.

2.88  2012-04-24
  - Improved documentation.

2.87  2012-04-23
  - Improved html_escape performance and added pattern support.
  - Fixed small escaping bug.

2.86  2012-04-23
  - Added support for TO_JSON method to Mojo::JSON.
  - Updated HTML5 entities in Mojo::Util.
  - Increased default heartbeat_timeout from 10 to 20 seconds in
    Mojo::Server::Hypnotoad.
  - Improved Mojo::Template exception handling.
  - Improved ojo exception handling.
  - Fixed a few HTML5 unescaping bugs.

2.85  2012-04-19
  - Modernized ".perltidyrc".
  - Fixed bug in "user_agent.t".

2.84  2012-04-19
  - Fixed flash.

2.83  2012-04-18
  - Added hostname verification support to Mojo::IOLoop::Client and
    Mojo::UserAgent.
  - Added SNI support to Mojo::IOLoop::Client and Mojo::UserAgent.
  - Fixed bug that prevented conditions to work in embedded applications.
  - Fixed bug that changed default values in embedded applications.
  - Fixed small bug in cpanify command.

2.82  2012-04-16
  - Deprecated relaxed placeholders "/(.foo)" in favor of "/#foo".
  - Deprecated Mojolicious::Routes::Route::waypoint.
  - Deprecated Mojolicious::Routes::Route::block.
  - Improved Mojolicious::Routes::Pattern to render formats.
  - Improved regex formatting in routes command.

2.81  2012-04-15
  - Improved router to allow disabled format detection to be inheritable by
    nested routes.
  - Improved error handling in Mojolicious::Plugin::JSONConfig.
  - Improved match method in Mojolicious::Routes::Pattern to support format
    detection.
  - Improved router log messages.
  - Improved all debug messages.
  - Fixed format detection bugs in Mojolicious::Routes::Pattern.
  - Fixed format handling in routes command.

2.80  2012-04-10
  - Added support for alternative MIME types to Mojolicious::Types.
  - Added endpoint method to Mojo::UserAgent::Transactor.
  - Fixed HTTPS proxy keep-alive bug in Mojo::UserAgent.

2.79  2012-04-10
  - Improved makefile and plugin generators to always use the latest
    Mojolicious version.
  - Fixed HTTPS proxy support in Mojo::UserAgent.
  - Fixed multiple Mojo::UserAgent::Transactor bugs.

2.78  2012-04-09
  - Improved Mojolicious::Routes to allow redispatching controllers.
  - Improved Mojolicious::Routes logging.

2.77  2012-04-09
  - Improved Mojo::Transaction::WebSocket to allow custom message parsers.
  - Improved help command to be less strict.
  - Fixed bug that prevented -h and --help options from working for generator
    commands.
  - Fixed small bug that prevented non-string secrets in Mojolicious.

2.76  2012-04-05
  - Improved documentation.

2.75  2012-04-05
  - Fixed small bug in params method of Mojo::Parameters.

2.74  2012-04-04
  - Fixed multiple small bugs in form method of Mojo::UserAgent::Transactor.

2.73  2012-04-03
  - Fixed multiple progress event bugs in Mojo::Message.

2.72  2012-04-03
  - Added kept_alive method to Mojo::Transaction::WebSocket.

2.71  2012-04-03
  - Improved Hypnotoad error handling.
  - Improved version command to detect proxy servers automatically.
  - Fixed small argument bug in to_hash method of Mojo::Headers.

2.70  2012-03-30
  - Improved speed of version command by switching to the MetaCPAN API.
  - Improved all bundled TLS test certificates to expire at the same time.
  - Fixed handler detection precedence bug in Mojolicious::Renderer.
  - Fixed ability to disable inactivity timeout in Hypnotoad.
  - Fixed ability to disable accepts limit in Hypnotoad.
  - Fixed small bug in get_all_data method of Mojo::Command.
  - Fixed small bug in inflate command. (memowe)

2.69  2012-03-26
  - Removed X-Forwarded-Host support since it is redundant for well
    configured reverse proxies.
  - Changed number of redirects ojo and the get command will follow to 10.
  - Improved ojo to detect proxy servers automatically.
  - Improved Mojo::DOM::CSS performance.
  - Improved Mojo::Reactor tests to be less strict.
  - Fixed a bug where paths and classes in Mojolicious::Static and
    Mojolicious::Renderer would have the wrong precedence.
  - Fixed small bug where Hypnotoad would ignore the MOJO_REVERSE_PROXY
    environment variable.

2.68  2012-03-24
  - Fixed generate command.

2.67  2012-03-24
  - Added start_app method to Mojo::Command.
  - Fixed small bugs in Mojo::Command and Mojolicious::Commands.

2.66  2012-03-23
  - Reformatted "Changes".
  - Improved Mojo::Reactor::Poll performance.
  - Fixed one_tick semantics to be equal in Mojo::Reactor::Poll and
    Mojo::Reactor::EV.

2.65  2012-03-22
  - Deprecated Mojo::IOLoop::drop in favor of Mojo::IOLoop::remove.
  - Renamed Mojo::Reactor::drop to Mojo::Reactor::remove.
  - Added module Mojo::Reactor::Poll.
  - Added one_tick method to Mojo::Reactor and Mojo::Reactor::EV.
  - Removed experimental status from Mojo::IOLoop::Client.
  - Removed experimental status from Mojo::IOLoop::Server.
  - Removed experimental status from Mojo::IOLoop::Stream.
  - Removed experimental status from Mojo::Reactor.
  - Removed experimental status from Mojo::Reactor::EV.
  - Removed experimental status from client_class, max_accepts, reactor,
    server_class and stream_class attributes in Mojo::IOLoop.
  - Removed experimental status from client server and stream methods in
    Mojo::IOLoop.
  - Updated jQuery to version 1.7.2.

2.64  2012-03-21
  - Deprecated Mojolicious::Routes::controller_base_class in favor of
    Mojolicious::Routes::base_classes.
  - Removed handle argument from io watchers in Mojo::Reactor.

2.63  2012-03-20
  - Renamed Mojo::IOWatcher to Mojo::Reactor.
  - Added module Mojolicious::Routes::Route.
  - Added find and root methods to Mojolicious::Routes::Route.
  - Improved form_for helper to automatically add method="POST" attributes when
    necessary.
  - Improved memory usage of Mojolicious::Routes.
  - Improved Mojolicious::Renderer performance.
  - Fixed bug that slowed down Mojolicious::Renderer.
  - Fixed small newline capture bug in Mojolicious::Routes::Match.

2.62  2012-03-17
  - Deprecated Mojolicious::Renderer::default_template_class in favor of
    Mojolicious::Renderer::classes.
  - Deprecated Mojolicious::Static::default_static_class in favor of
    Mojolicious::Static::classes.
  - Added options function to Mojolicious::Lite.
  - Added options method to Mojolicious::Routes.
  - Added options method to Mojo::UserAgent.
  - Added options_ok method to Test::Mojo.
  - Added o function to ojo.
  - Removed experimental status from Mojo::Cache.
  - Removed experimental status from Mojo::DOM::CSS.
  - Removed experimental status from Mojo::DOM::HTML.
  - Removed experimental status from Mojo::Server::Morbo.
  - Removed experimental status from Mojo::Transaction::WebSocket.
  - Removed experimental status from Mojo::UserAgent::Transactor.
  - Removed experimental status from Mojolicious::Command::cpanify.
  - Removed experimental status from upgrade event in Mojo::Transaction::HTTP.
  - Removed experimental status from t helper in
    Mojolicious::Plugin::TagHelpers.
  - Removed experimental status from current_route and url_with helpers in
    Mojolicious::Plugin::DefaultHelpers.
  - Removed experimental status from websocket function in Mojolicious::Lite.
  - Removed experimental status from cache attribute in Mojolicious::Renderer.
  - Removed experimental status from format attribute in
    Mojolicious::Routes::Pattern.
  - Removed experimental status from ca and local_address, request_timeout and
    transactor attributes in Mojo::UserAgent.
  - Removed experimental status from cache attribute in Mojolicious::Routes.
  - Removed experimental status from send method in Mojolicious::Controller.
  - Removed experimental status from finish_ok, message_is, message_isnt,
    message_like, message_unlike, send_ok and websocket_ok methods in
    Test::Mojo.
  - Removed experimental status from detect method in Mojolicious::Types.
  - Removed experimental status from app_url, build_websocket_tx and
    websocket methods in Mojo::UserAgent.
  - Removed experimental status from emit_safe method in Mojo::EventEmitter.
  - Removed experimental status from to_psgi_app method in Mojo::Server::PSGI.
  - Removed experimental status from clone method in Mojo::Message::Request.
  - Removed experimental status from has_conditions, has_custom_name,
    has_websocket, is_websocket and websocket methods in Mojolicious::Routes.
  - Removed experimental status from clone, is_limit_exceeded and max_line_size
    methods in Mojo::Headers.
  - Removed experimental status from text_after, text_before and xml methods,
    as well as trim arguments in Mojo::DOM.
  - Removed experimental status from boundary, charset, clone, is_dynamic,
    progress and max_leftover_size methods in Mojo::Content.
  - Removed experimental status from clone method in Mojo::Content::MultiPart.
  - Removed experimental status from clone method in Mojo::Content::Single.
  - Removed experimental status from is_dynamic, is_limit_exceeded and
    max_line_size methods in Mojo::Message.
  - Improved Mojo::IOWatcher exception handling a little.
  - Improved Mojolicious::Routes logging.
  - Fixed port generation bug. (xaka)
  - Fixed IPv6 listen value bug in Mojo::Server::Daemon.

2.61  2012-03-14
  - Merged Mojolicious exception handling into the around_dispatch hook, this
    will allow a whole new category of exception handling plugins.

2.60  2012-03-13
  - Added EXPERIMENTAL current_route helper to
    Mojolicious::Plugin::DefaultHelpers.
  - Made text_area helper a little smarter. (sshaw, sri)
  - Improved inactivity timeout logging for WebSockets.
  - Fixed escaping bug in select_field and text_area helpers.
  - Fixed Windows bug in "asset.t".

2.59  2012-03-09
  - Removed duplicate 2.58 directory.

2.58  2012-03-09
  - Added support for MOJO_LISTEN environment variable.
  - Removed listen attribute from Mojo::Server::Morbo.
  - Improved event loop compatibility of Mojo::Server::PSGI.
  - Fixed Mojo::URL object handling bug in url_for.
  - Fixed bug in Hypnotoad that prevented disabling of reverse proxy support
    between zero downtime software upgrades.
  - Fixed small caching bug in Morbo file watcher.
  - Fixed Windows bug in "asset.t".

2.57  2012-03-03
  - Replaced protection from excessively large form values in Mojo::Message
    with documentation.

2.56  2012-03-01
  - Deprecated custom HTTPS listen values in favor of URLs for all built-in
    web servers.
      https://*:3000:/x/server.crt:/y/server.key:/z/ca.crt
    becomes
      https://*:3000?cert=/x/server.crt&key=/y/server.key&ca=/z/ca.crt
  - Removed experimental status from patch function in Mojolicious::Lite.
  - Removed experimental status from patch method in Mojolicious::Routes.
  - Removed experimental status from patch method in Mojo::UserAgent.
  - Removed experimental status from patch_ok method in Test::Mojo.
  - Removed experimental status from t function in ojo.
  - Fixed small inconsistency between Mojo::IOWatcher and Mojo::IOWatcher::EV
    where Mojo::IOWatcher wouldn't stop automatically when not watching for
    events anymore.
  - Fixed Mojo::IOLoop to clean up after itself.

2.55  2012-02-28
  - Combined WebSocket timeout with normal inactivity timeout.

2.54  2012-02-27
  - Deprecated class and method stash values in favor of controller and action.
  - Added EXPERIMENTAL patch function to Mojolicious::Lite.
  - Added EXPERIMENTAL patch method to Mojolicious::Routes.
  - Added EXPERIMENTAL patch method to Mojo::UserAgent.
  - Added EXPERIMENTAL patch_ok method to Test::Mojo.
  - Added EXPERIMENTAL t function to ojo.
  - Added support for MOJO_CONNECT_TIMEOUT, MOJO_INACTIVITY_TIMEOUT,
    MOJO_REQUEST_TIMEOUT and MOJO_WEBSOCKET_TIMEOUT environment variables.
  - Split up Mojolicious::Guides::Cheatsheet into more reference documentation.
  - Increased default connect timeout from 3 to 10 seconds in Mojo::UserAgent
    and Mojo::IOLoop::Client.
  - Improved resilience of Mojo::IOLoop::Stream.
  - Improved test command to colorize by default.
  - Fixed small rendering bug in Mojolicious::Plugin::PODRenderer.

2.53  2012-02-25
  - Improved Hypnotoad with many info level log messages.
  - Improved resilience of Mojo::IOLoop::Stream.
  - Fixed Hypnotoad upgrade timeout bug.

2.52  2012-02-24
  - Removed experimental status from config method in Mojo.
  - Renamed send_message method in Mojolicious::Controller to send.
  - Renamed send_message_ok method in Test::mojo to send_ok.
  - Renamed to_psgi method in Mojo::Server::PSGI to to_psgi_app.
  - Combined send_message and send_frame methods in
    Mojo::Transaction::WebSocket to send.
  - Improved emit_chain method in Mojolicious::Plugins to allow reforwarding.
    (jamadam)
  - Fixed bug that prevented Mojo::IOLoop from dying when started twice.
  - Fixed a cookie jar path parsing bug. (marcus)
  - Fixed multiple value bug in param method of Mojolicious::Controller.

2.51  2012-02-19
  - Added EXPERIMENTAL to_psgi method to Mojo::Server::PSGI.
  - Removed experimental status from around_dispatch hook.
  - Removed experimental status from emit_chain method in Mojolicious::Plugins.
  - Removed experimental status from drain event in Mojo::Content.
  - Improved portability of scripts.
  - Fixed bug that can prevent foreign event loops from being able to control
    Mojo::IOLoop.

2.50  2012-02-18
  - Added EXPERIMENTAL is_running method to Mojo::IOWatcher and
    Mojo::IOWatcher::EV.
  - Added file upload support to param method in Mojolicious::Controller.
  - Removed gitignore command.
  - Improved Mojo::IOLoop to be controllable from foreign event loops.
  - Improved protection from excessively large form values in Mojo::Message.
  - Improved resilience of Mojo::IOLoop::Client.
  - Fixed Mojo::Template expressions and escaped expressions to consistently
    enforce scalar context.
  - Fixed small bugs in makefile command. (tempire, marcus, sri)

2.49  2012-02-13
  - Deprecated Mojolicious::Renderer::root in favor of
    Mojolicious::Renderer::paths. (memowe, sri)
  - Deprecated Mojolicious::Static::root in favor of
    Mojolicious::Static::paths. (memowe, sri)
  - Added support for multiple "templates" and "public" directories to
    Mojolicious. (memowe, sri)
  - Improved version command to be more responsive. (crab)
  - Improved resilience of Mojo::IOLoop::Client.
  - Fixed parent combinator bug in Mojo::DOM::CSS. (sharifulin, sri)

2.48  2012-02-09
  - Fixed Hypnotoad HTTPS bug.
  - Fixed small URL escaping bug in Mojo::UserAgent::Transactor.
  - Fixed small MIME::Base64 and MIME::QuotedPrint related bugs in Mojo::Util.
    (sestegra, sri)

2.47  2012-02-06
  - Deprecated Hypnotoad configuration files in favor of more powerful
    application configuration files.
  - Deprecated Mojo::Server::Daemon::prepare_ioloop in favor of
    Mojo::Server::Daemon::start.
  - Deprecated Mojo::Headers::x_forwarded_for.
  - Added EXPERIMENTAL config method to Mojo.
  - Added EXPERIMENTAL ca attribute to Mojo::UserAgent.
  - Added EXPERIMENTAL drain event to Mojo::Content.
  - Added EXPERIMENTAL drain event to Mojo::Transaction::WebSocket.
  - Added EXPERIMENTAL support for RSV1-3 flags to
    Mojo::Transaction::WebSocket.
  - Added EXPERIMENTAL tls_ca option to Mojo::IOLoop::Client::connect.
  - Added lock_timeout setting to Hypnotoad.
  - Removed experimental status from JSON Pointer support.
  - Removed Cygwin exception from Hypnotoad.
  - Replaced drop_handle and drop_timer methods in Mojo::IOWatcher with drop
    method.
  - Renamed change and watch methods in Mojo::IOWatcher to watch and io.
  - Renamed resume and pause methods in Mojo::IOLoop::Server to start and stop.
  - Renamed resume and pause methods in Mojo::IOLoop::Stream to start and stop.
  - Added pdf MIME type. (bfaist)
  - Improved CSS of some built-in templates.
  - Fixed bug that prevented newer dual-life modules to be loaded.
  - Fixed small bug in Mojo::IOLoop::Stream that caused close events to fail
    sometimes.
  - Fixed small relative URL detection bug in get command.

2.46  2012-01-25
  - Added EXPERIMENTAL request_timeout attribute to Mojo::UserAgent.
  - Added EXPERIMENTAL text_after and text_before methods to Mojo::DOM.
  - Improved all uses of syswrite to be more defensive. (bduggan, sri)
  - Fixed small parser bug in Mojo::Message::Response.
  - Fixed small partial rendering bug.
  - Fixed small HTML5 parser bug in Mojo::DOM::HTML. (dougwilson)

2.45  2012-01-18
  - Removed T-Shirt link.
  - Fixed small caching bug in Mojolicious::Plugin::EPRenderer.
  - Fixed typo in exception template.

2.44  2012-01-18
  - Added new not found page for development mode.
  - Added EXPERIMENTAL url_with helper to Mojolicious::Plugin::DefaultHelpers.
    (diegok, marcus, judofyr, sri)
  - Added EXPERIMENTAL support for removing query parameters while merging to
    query method of Mojo::URL. (marcus, judofyr, sri)
  - Removed experimental status from Mojo::IOLoop::Delay.
  - Removed defer method from Mojo::IOLoop.
  - Improved exception page for development mode.
  - Improved syntax highlighting in documentation browser slightly.
  - Fixed Mojo::Command::app to be an attribute and not a method.
  - Fixed Mojo::ByteStream, Mojo::Collection and Mojo::DOM to not be subclasses
    of Mojo::Base.

2.43  2012-01-08
  - Improved most commands with shortcut options.
  - Improved get command to automatically enable verbose mode for HEAD
    requests. (simotrone)

2.42  2012-01-02
  - Deprecated Test::Mojo::max_redirects.
  - Removed exprimental status from respond_to method in
    Mojolicious::Controller.
  - Removed experimental status from error event in Mojo::UserAgent.
  - Removed experimental status from connect_timeout attribute in
    Mojo::UserAgent.
  - Removed experimental status from connection event in Mojo::Transaction.
  - Removed experimental status from upgrade event in Mojo::Asset::Memory.
  - Removed experimental status from auto_upgrade and max_memory_size
    attributes in Mojo::Asset::Memory.
  - Removed experimental status from part event in Mojo::Content::MultiPart.
  - Removed experimental status from upgrade event in Mojo::Content::Single.
  - Removed experimental status from auto_upgrade attribute in
    Mojo::Content::Single.
  - Removed experimental status from body event in Mojo::Content.
  - Removed experimental status from mojo_lib_dir and slurp_rel_file methods in
    Mojo::Home.
  - Removed experimental status from message event in Mojo::Log.
  - Removed experimental status from contains method in Mojo::Path.
  - Removed test_server method from Test::Mojo.
  - Renamed test_server method in Mojo::UserAgent to app_url.
  - Improved RFC 6265 compliance of generated request headers.
  - Fixed bug that prevented sessions without expiration.

2.41  2011-12-28
  - Deprecated Mojo::Cookie::version.
  - Deprecated Mojo::Cookie::Response::comment and
    Mojo::Cookie::Response::port.
  - Removed experimental status from group feature of Mojolicious::Lite.
  - Removed experimental status from Mojo::Collection.
  - Removed experimental status from Mojolicious::Plugin::Mount.
  - Removed experimental status from dnt and etag methods in Mojo::Headers.
  - Improved session expiration by allowing it to be disabled. (nwatkiss, sri)
  - Improved session cookies to always enable the HttpOnly flag.
    (nwatkiss, sri)
  - Improved RFC 6265 compliance of cookie implementation.

2.40  2011-12-24
  - Added EXPERIMENTAL JSON Pointer support. (crab)
  - Improved inactivity timeouts by allowing them to be disabled.
  - Improved class detection of inflate command.
  - Fixed small bug in Mojo::IOLoop::Server that prevented TLS tests from
    running parallel. (nwatkiss)
  - Fixed repository to not favor specific editors.

2.39  2011-12-22
  - Deprecated all keep_alive_timeout attributes and parameters in favor of
    inactivity_timeout.
  - Added EXPERIMENTAL error event to Mojo::UserAgent.
  - Added EXPERIMENTAL local_address attribute to Mojo::UserAgent.
  - Added EXPERIMENTAL local_address option to Mojo::IOLoop::Client::connect.
  - Added EXPERIMENTAL close method to Mojo::IOLoop::Stream.
  - Added "hello.pl" and "fast.pl" to example scripts.
  - Removed log attribute from Mojo::UserAgent.
  - Removed MOJO_STATIC_CLASS and MOJO_TEMPLATE_CLASS environment variables.
  - Improved tests for many environment variables.
  - Fixed Morbo to ignore hidden directories.
  - Fixed small argument bug in client method of Mojo::IOLoop.
  - Fixed small memory leak in Mojo::IOLoop::Stream.
  - Fixed multiple small error reporting bugs in Mojo::UserAgent.
  - Fixed online tests to not be affected by geographical location. (marcus)

2.38  2011-12-17
  - Changed Mojo::IOLoop::client arguments from ($loop, $stream, $err) to
    ($loop, $err, $stream).
  - Improved resilience of Mojo::IOLoop::Stream.
  - Fixed memory leaks caused by named capture groups bug in Perl. (plu, sri)
  - Fixed small cleanup bug in Mojo::Asset::File.
  - Fixed small multipart bug in Mojo::Message. (augensalat)
  - Fixed missing status method in Mojo::Headers. (crab)
  - Fixed small Mojo::IOLoop::Stream timeout bug.

2.37  2011-12-10
  - Welcome to the Mojolicious core team Marcus Ramberg, Glen Hinkle and
    Abhijit Menon-Sen.
  - Removed cleanup_interval attribute from Mojo::IOLoop.
  - Deprecated Mojo::IOLoop::timeout in favor of Mojo::IOLoop::Stream::timeout.
  - Added EXPERIMENTAL timeout event to Mojo::IOLoop::Stream.
  - Added EXPERIMENTAL timeout attribute to Mojo::IOLoop::Stream.
  - Changed default keep-alive timeout of Mojo::UserAgent from 15 to 20
    seconds.
  - Fixed inline template double encoding bug.

2.36  2011-12-05
  - Changed default heartbeat timeout of Hypnotoad from 5 to 10 seconds.
  - Fixed default keep-alive timeout of Hypnotoad.

2.35  2011-12-01
  - Added EXPERIMENTAL etag method to Mojo::Headers.
  - Fixed one-byte payload bug in Mojo::Transaction::WebSocket. (tinx)
  - Fixed body event in Mojo::Content to work more reliably in CGI
    environments.
  - Fixed small portability issue in loader test.

2.34  2011-11-28
  - Added "websocket.pl" to example scripts.
  - Fixed small bugs in example scripts.

2.33  2011-11-28
  - Improved Mojo::EventEmitter performance slightly.
  - Fixed a few small inline template issues.
  - Fixed small WebSocket handshake bug.

2.32  2011-11-24
  - Added EXPERIMENTAL error event to Mojo::IOWatcher.
  - Updated jQuery to version 1.7.1.
  - Improved Mojo::IOLoop performance by changing the default cleanup interval
    from 0 to 0.025 seconds.

2.31  2011-11-21
  - Improved stacktraces by making them a lot simpler.

2.30  2011-11-20
  - Deprecated Mojo::IOLoop::on_lock in favor of Mojo::IOLoop::lock.
  - Deprecated Mojo::IOLoop::on_unlock in favor of Mojo::IOLoop::unlock.

2.29  2011-11-19
  - Deprecated Mojolicious::on_process in favor of around_dispatch hook.
  - Added EXPERIMENTAL emit_chain method to Mojolicious::Plugins. (Akron, sri)
  - Added EXPERIMENTAL around_dispatch hook.
  - Fixed small bug in boundary and charset methods of Mojo::Content.

2.28  2011-11-18
  - Fixed small IPv6 portabilty issue in Mojo::IOLoop::Client.

2.27  2011-11-16
  - Deprecated Mojo::IOLoop::connect in favor of Mojo::IOLoop::client.
  - Deprecated Mojo::IOLoop::listen in favor of Mojo::IOLoop::server.
  - Deprecated Mojo::IOLoop::connection_timeout in favor of
    Mojo::IOLoop::timeout.
  - Deprecated Mojo::IOLoop::write in favor of Mojo::IOLoop::Stream::write.
  - Deprecated Mojo::IOLoop::connect_timeout in favor of timeout argument.
  - Deprecated on_* methods in Mojo::IOLoop.
  - Removed Mojo::IOLoop::Resolver.
  - Added EXPERIMENTAL connect_timeout attribute to Mojo::UserAgent.
  - Added EXPERIMENTAL is_readable method to Mojo::IOLoop::Stream.
  - Added EXPERIMENTAL charset method to Mojo::Content.
  - Added EXPERIMENTAL write event to Mojo::IOLoop::Stream.
  - Added EXPERIMENTAL connection event to Mojo::Transaction.
  - Improved CSS of some built-in templates.
  - Fixed many small memory leaks.
  - Fixed multiple drain callback bugs.
  - Fixed small attribute selector bug in Mojo::DOM::CSS. (tladesignz)

2.26  2011-11-10
  - Added EXPERIMENTAL upgrade event to Mojo::Asset::Memory.
  - Added EXPERIMENTAL upgrade event to Mojo::Transaction::HTTP.
  - Added EXPERIMENTAL auto_upgrade attribute to Mojo::Asset::Memory.
  - Improved Mojo::Content::Single and Mojo::Content::MultiPart parsers to
    reuse events.
  - Fixed small route caching bug.

2.25  2011-11-08
  - Removed canonicalize method from Mojo::URL.
  - Fixed URL without scheme handling in Mojo::URL.
  - Fixed a few small bugs in Mojo::URL.

2.24  2011-11-05
  - Added EXPERIMENTAL canonicalize method to Mojo::URL.
  - Fixed small path canonicalization bug in Mojo::URL.
  - Fixed small trailing slash bug in Mojo::Path.

2.23  2011-11-04
  - Changed semantics of get_line function in Mojo::Util.
  - Removed experimental status from Mojo::Util.
  - Updated jQuery to version 1.7.
  - Improved empty path element handling in Mojo::URL.
  - Fixed empty path element bug in Mojo::Path.

2.22  2011-11-03
  - Added EXPERIMENTAL --verbose option to routes command.
  - Fixed a few attribute without value selector bugs in Mojo::DOM::CSS.
  - Fixed template inheritance bug in Mojolicious::Renderer.

2.21  2011-11-02
  - Removed profile helper.
  - Removed CSS4 selector subject support from Mojo::DOM::CSS until we actually
    know the exact semantics.
  - Improved Mojo::ByteStream to generate most Mojo::Util based methods
    automatically.
  - Fixed route pattern bug.
  - Fixed bug in "user_agent.t".

2.20  2011-11-01
  - Changed semantics of almost all functions in Mojo::Util.

2.19  2011-10-31
  - Deprecated Mojolicious::Plugins::add_hook in favor of
    Mojolicious::Plugins::on.
  - Deprecated Mojolicious::Plugins::run_hook in favor of
    Mojolicious::Plugins::emit_hook.
  - Deprecated Mojolicious::Plugins::run_hook_reverse in favor of
    Mojolicious::Plugins::emit_hook_reverse.

2.18  2011-10-30
  - Fixed small rendering bug.

2.17  2011-10-30
  - Fixed bug in "user_agent.t".

2.16  2011-10-30
  - Removed experimental status from Mojo::EventEmitter.
  - Merged unsubscribe and unsubscribe_all methods in Mojo::EventEmitter.

2.15  2011-10-29
  - Deprecated Mojolicious::Controller::on_finish in favor of
    Mojolicious::Controller::on.
  - Removed Mojolicious::Controller::on_message, you can now use
    Mojolicious::Controller::on instead.
      $c->on(message => sub {...});
  - Added EXPERIMENTAL message event to Mojo::Log.

2.14  2011-10-29
  - Deprecated Mojo::DOM::new with arguments.
  - Renamed Mojo::IOLoop::Trigger to Mojo::IOLoop::Delay.
  - Renamed watch method in Mojo::IOWatcher to change.
  - Renamed io method in Mojo::IOWatcher to watch.
  - Renamed cancel method in Mojo::IOWatcher to drop_timer.
  - Renamed remove method in Mojo::IOWatcher to drop_handle.
  - Added EXPERIMENTAL --verbose option to test command.

2.13  2011-10-28
  - Removed experimental status from many classes, methods, attributes and
    functions.
  - Removed before_render hook.
  - Removed Mojolicious::Plugin::CallbackCondition.

2.12  2011-10-27
  - Added EXPERIMENTAL cleanup_interval attribute to Mojo::IOLoop.
  - Added EXPERIMENTAL max_leftover_size attribute to Mojo::Content.
  - Replaced handle method in Mojo::IOLoop with stream method.
  - Replaced writing and not_writing methods in Mojo::IOWatcher with watch
    method.
  - Replaced is_finished method in Mojo::IOLoop::Stream with is_writing
    method.
  - Replaced add method in Mojo::IOWatcher with io method.
  - Reduced memory usage of Mojo::Headers significantly.
  - Fixed finish event timing in Mojo::Server::Daemon.

2.11  2011-10-26
  - Improved Mojo::IOLoop::Stream to only emit close events once.

2.10  2011-10-25
  - Added EXPERIMENTAL send_frame method to Mojo::Transaction::WebSocket.
  - Added EXPERIMENTAL frame event to Mojo::Transaction::WebSocket.
  - Changed syntax for binary messages in Mojo::Transaction::WebSocket.
      [$bytes] becomes [binary => $bytes]

2.09  2011-10-23
  - Fixed small environment cleanup bug in Mojo::IOLoop::Server.

2.08  2011-10-23
  - Fixed a few more small test bugs.

2.07  2011-10-23
  - Fixed a few small test bugs.

2.06  2011-10-23
  - Improved documentation.

2.05  2011-10-22
  - Added EXPERIMENTAL max_memory_size attribute to Mojo::Asset::Memory.
  - Added EXPERIMENTAL is_file method to Mojo::Asset and Mojo::Asset::File.
  - Improved start_tls method in Mojo::IOLoop by allowing it to accept more
    options.
  - Improved MOJO_MAX_MEMORY_SIZE handling by moving it from
    Mojo::Content::Single to Mojo::Asset::Memory.
  - Fixed HTTPS proxy bug in Mojo::UserAgent.

2.04  2011-10-21
  - Fixed small HTTP response parser bug.
  - Fixed Windows portability issue in "upload_lite_app.t".

2.03  2011-10-20
  - Deprecated all is_done methods in favor of is_finished.
  - Renamed done event in Mojo::IOLoop::Trigger to finish.
  - Added EXPERIMENTAL support for new HTTP status codes from
    draft-nottingham-http-new-status.
  - Fixed small bug in "upload_lite_app.t".

2.02  2011-10-20
  - Merged request and upgrade events in Mojo::Transaction::HTTP.
  - Improved Mojolicious::Controller attribute default values.

2.01  2011-10-19
  - Added EXPERIMENTAL upgrade event to Mojo::Content::Single.
  - Added EXPERIMENTAL part event to Mojo::Content::MultiPart.
  - Fixed arguments of upgrade event in Mojo::Transaction::HTTP.
  - Fixed small WebSocket upgrade bug in Mojo::Server::Daemon.

2.0  2011-10-17
  - Code name "Leaf Fluttering In Wind", this is a major release.
  - Increased Perl version requirement to 5.10.1.
  - Renamed Mojo::IOLoop::EventEmitter to Mojo::EventEmitter.
  - Replaced one_tick method in Mojo::IOWatcher with start and stop methods.
  - Added EXPERIMENTAL contains method to Mojo::Path.
  - Added EXPERIMENTAL auto_upgrade attribute to Mojo::Content::Single.
  - Added EXPERIMENTAL boundary method to Mojo::Content.
  - Added EXPERIMENTAL slice method to Mojo::Collection.
  - Added EXPERIMENTAL build and parse methods to Mojo::IOLoop::Resolver.
  - Updated WebSocket implementation to ietf-17.
  - Improved many modules to use events instead of callbacks.
  - Improved message parser performance slightly.
  - Improved Mojo::IOLoop to die if started twice.
  - Improved setuidgid in Mojo::Server::Daemon.
  - Improved Mojo::IOWatcher backend detection.
  - Improved Mojo::IOLoop::Stream to handle unexpected connection close more
    gracefully.
  - Fixed many portability issues.
  - Fixed on_finish callback to work consistently with all servers.
  - Fixed on_finish callback to work consistently with the user agent.
  - Fixed big memory and file descriptor leak in the TLS code of
    Mojo::IOLoop::Server.
  - Fixed small memory leak in Mojolicious.
  - Fixed small memory leak in Mojo::DOM.
  - Fixed small memory leak in Mojo::Message.
  - Fixed small boundary bug in Mojo::Content::MultiPart.
  - Fixed small formatting bug in Mojo::Headers.
  - Fixed small proxy message generation bug.
  - Fixed small detection bug in Mojolicious::Types.

1.99  2011-09-29
  - Deprecated direct hash access to the flash in Mojolicious::Controller.
  - Added EXPERIMENTAL group function to Mojolicious::Lite.
  - Added EXPERIMENTAL build_frame and parse_frame methods to
    Mojo::Transaction::WebSocket.
  - Added EXPERIMENTAL accepts attribute to Mojo::IOLoop::Server.
  - Added EXPERIMENTAL profile helper.
  - Added EXPERIMENTAL binary support to Mojo::Transaction::WebSocket.
  - Updated WebSocket implementation to ietf-16.
  - Changed default upgrade timeout of Hypnotoad from 30 to 60 seconds.
  - Improved accept performance of all built-in web servers by up to 1000% with
    the EV backend.
  - Improved connection_timeout method in Mojo::IOLoop by allowing it to be
    called as a class method.
  - Improved CSS of some built-in templates.
  - Improved resilience of HTTP parser.
  - Fixed CSS of built-in exception template.
  - Fixed close event bug in Mojo::IOLoop.
  - Fixed small redirect_to bug. (judofyr, sri)
  - Fixed small attribute selector bug in Mojo::DOM::CSS.
  - Fixed small Unicode bug in Mojolicious::Plugin::EPRenderer.
  - Fixed a few small route bugs.
  - Fixed Perl 5.8.7 compatibility.

1.98  2011-09-14
  - Removed Mojo::Server::FastCGI so it can be maintained as a separate
    distribution.
  - Added EXPERIMENTAL mojo_lib_dir and slurp_rel_file methods to Mojo::Home.
  - Improved host condition to work in more environments.
  - Improved CSS of all built-in templates.
  - Improved test command to run tests in alphabetical order. (viliampucik)
  - Improved non-blocking resolver by allowing it to be disabled.
  - Improved DATA templates by removing a whitespace requirement.
  - Fixed small name generation bug in Mojolicious::Plugin::Config.
  - Fixed small bug in cookie jar.
  - Fixed small plugin loader bug.
  - Fixed Hypnotoad to clean up lock files.
  - Fixed small bug that caused exceptions to be logged twice.

1.97  2011-09-03
  - Improved Unicode handling to be more correct and less forgiving.

1.96  2011-09-02
  - Updated jQuery to version 1.6.3.
  - Fixed Mojo::IOLoop to ignore SIGPIPE.

1.95  2011-09-01
  - Improved cookie generation slightly. (cosimo, sri)
  - Fixed Mojo::IOLoop to not ignore SIGPIPE.

1.94  2011-08-27
  - Fixed lite_app and plugin generators.

1.93  2011-08-27
  - Added EXPERIMENTAL support for escaped tags to Mojo::Template.
  - Improved Morbo to ignore dotfiles.
  - Fixed trimming bug in Mojo::Template.
  - Fixed a few small bugs in Mojo::Template.
  - Fixed small version detection bug in Mojo::Cookie.

1.92  2011-08-26
  - Fixed quoting bug in Mojo::Cookie.

1.91  2011-08-25
  - Added EXPERIMENTAL support for cloning Mojo::Message::Request objects.
  - Improved redirect support in Mojo::UserAgent to be closer to commonly used
    browsers.

1.90  2011-08-24
  - Improved respond_to to automatically render an empty 204 response for
    unknown formats.
  - Improved render_exception and render_not_found to use the current format if
    available. (alnewkirk)

1.89  2011-08-23
  - Improved Mojo::Home portability. (omega)

1.88  2011-08-23
  - Added EXPERIMENTAL split method to Mojo::ByteStream.
  - Fixed small bug in Mojo::JSON.

1.87  2011-08-23
  - Added EXPERIMENTAL app method to Mojo::Command.
  - Added EXPERIMENTAL t helper to Mojolicious::Plugin::TagHelpers.
  - Made tag helper a little smarter.
  - Made camelize a little smarter.
  - Fixed small route rendering bug.

1.86  2011-08-21
  - Deprecated CamelCase command modules and lowercased all the built-in ones.
  - Added EXPERIMENTAL support for testing WebSockets with Test::Mojo.
  - Added GET/POST parameter support to respond_to.
  - Made class_to_file slightly smarter.

1.85  2011-08-20
  - Fixed a url_for bug where captures would be ignored.

1.84  2011-08-19
  - Added EXPERIMENTAL first, reverse, shuffle and sort methods to
    Mojo::Collection.
  - Fixed small test portablity bug.

1.83  2011-08-19
  - Renamed filter method in Mojo::Collection to grep.

1.82  2011-08-19
  - Added EXPERIMENTAL filter method to Mojo::Collection.
  - Removed while and until methods from Mojo::Collection.

1.81  2011-08-19
  - Renamed Mojo::DOM::Collection to Mojo::Collection and added a few new
    methods.
  - Made Mojolicious::Plugins loader quite a bit smarter.
  - Improved Test::Mojo diagnostics.

1.80  2011-08-17
  - Deprecated Mojolicious::Plugin::EpRenderer in favor of
    Mojolicious::Plugin::EPRenderer.
  - Deprecated Mojolicious::Plugin::EplRenderer in favor of
    Mojolicious::Plugin::EPLRenderer.
  - Deprecated Mojolicious::Plugin::I18n in favor of Mojolicious::Plugin::I18N.
  - Deprecated Mojolicious::Plugin::JsonConfig in favor of
    Mojolicious::Plugin::JSONConfig.
  - Deprecated Mojolicious::Plugin::PodRenderer in favor of
    Mojolicious::Plugin::PODRenderer.

1.79  2011-08-17
  - Added support for uppercase relative plugin names. (lammel)

1.78  2011-08-16
  - Added EXPERIMENTAL modules Mojolicious::Command::Cpanify and
    Mojolicious::Command::Generate::Plugin. (sri, yko, tempire)
  - Fixed "websocket_lite_app.t" to require Perl 5.10+.
  - Fixed small empty cookie bug.
  - Fixed small command bug.

1.77  2011-08-14
  - Deprecated Mojo::Path::append in favor of using Mojo::Path::parts directly.
  - Improved handling of preformatted text in Mojo::DOM.
  - Improved Mojo::DOM to allow smart whitespace trimming to be disabled.
    (Akron)
  - Fixed small Unicode bug in get command.

1.76  2011-08-12
  - Fixed small Mojo::URL escaping bug.

1.75  2011-08-12
  - Added secure_compare function to Mojo::Util as a precaution against timing
    attacks in the future. (judofyr)
  - Added EXPERIMENTAL CSS4 selector subject support to Mojo::DOM::CSS.

1.74  2011-08-09
  - Added EXPERIMENTAL --verbose option to Morbo.

1.73  2011-08-09
  - Added EXPERIMENTAL -strict flag to Mojo::Base.
  - Added EXPERIMENTAL respond_to method to Mojolicious::Controller.
  - Added EXPERIMENTAL detect method to Mojolicious::Types.
  - Added accept method to Mojo::Headers.
  - Made Mojo::UserAgent slightly more efficient.
  - Improved get command to autoflush STDOUT.

1.72  2011-08-05
  - Changed default keep-alive timeout in Mojo::Server::Daemon from 5 to 15
    seconds.
  - Fixed small alternative placeholder value bug in routes.
  - Fixed small bug in Mojo::IOWatcher.
  - Fixed small bug in Mojo::IOLoop::Client.

1.71  2011-08-05
  - Improved Mojo::IOWatcher to use higher resolution timers.

1.70  2011-08-04
  - Added EXPERIMENTAL defer method to Mojo::IOLoop.
  - Added extended callback support to Mojo::IOLoop::Trigger.
  - Fixed a few small bugs in Mojo::URL. (sshaw)

1.69  2011-08-03
  - Added EXPERIMENTAL module Mojo::IOLoop::Trigger.
  - Modernized Mojo::HelloWorld.
  - Improved HTML healing capabilities of Mojo::DOM::HTML.
  - Improved HTML rendering in Mojo::DOM::HTML.
  - Improved 64-bit support in Mojo::Transaction::WebSocket.
  - Fixed memory leak in Mojo::IOLoop::Client.
  - Fixed memory leak in Mojolicious.
  - Fixed small bug in Mojo::IOLoop::Server.

1.68  2011-07-29
  - Moved is_ipv4 and is_ipv6 methods from Mojo::URL to Mojo::IOLoop::Resolver.

1.67  2011-07-27
  - Fixed version command.
  - Fixed small Mojo::DOM bug. (Akron)

1.66  2011-07-27
  - Added EXPERIMENTAL detect method to Mojo::IOWatcher.
  - Improved Mojo::IOLoop::Resolver efficiency.

1.65  2011-07-25
  - Added EXPERIMENTAL modules Mojo::IOLoop::Client,
    Mojo::IOLoop::EventEmitter, Mojo::IOLoop::Server and
    Mojo::IOLoop::Stream, which contain extracted functionality from
    Mojo::IOLoop.
  - Added EXPERIMENTAL module Mojo::IOWatcher::EV. (xantus)
  - Removed modules Mojo::IOWatcher::Epoll and Mojo::IOWatcher::KQueue, since
    Mojo::IOWatcher::EV is a much better alternative.
  - Renamed Mojo::Resolver to Mojo::IOLoop::Resolver.
  - Improved Mojolicious::Routes to automatically disable the routing cache if
    conditions are used.
  - Improved route constraint alternatives.
  - Improved documentation browser CSS. (judofyr)
  - Fixed small bug in get command.

1.64  2011-07-10
  - Added EXPERIMENTAL module Mojo::DOM::HTML.

1.63  2011-07-10
  - Added EXPERIMENTAL modules Mojo::DOM::CSS and Mojo::DOM::Collection.
  - Renamed Mojo::Transactor to Mojo::UserAgent::Transactor.

1.62  2011-07-10
  - Merged Mojo::HTML into Mojo::DOM again.

1.61  2011-07-09
  - Added module Mojo::HTML, which contains extracted functionality from
    Mojo::DOM.

1.60  2011-07-08
  - Added xsl MIME type. (shiftycow)
  - Fixed Windows portability issue.

1.59  2011-07-08
  - Added peer method to Mojo::Transactor.
  - Deprecated Test::Mojo->new(app => 'MyApp') in favor of
    Test::Mojo->new('MyApp').
  - Made $t->app always return the application instance in tests.

1.58  2011-07-07
  - Fixed fork bug in Mojo::IOLoop.
  - Fixed small Hypnotoad issues.

1.57  2011-07-07
  - Added --stop option to Hypnotoad.
  - Made hot deployment with Hypnotoad even easier.

1.56  2011-07-04
  - Fixed small memory leaks in Hypnotoad and Mojo::IOLoop.

1.55  2011-07-04
  - Fixed some portability issues in tests.

1.54  2011-07-03
  - Fixed small Windows issue.

1.53  2011-07-02
  - Added EXPERIMENTAL format method to Mojo::Log and simplified the default
    log file format.
  - Improved include helper argument localization. (miyagawa)

1.52  2011-07-01
  - Fixed small static file in DATA section bug.

1.51  2011-07-01
  - Renamed build_url method in Test::Mojo to test_server.
  - Improved test_server method in Mojo::UserAgent.
  - Fixed small timing issue in "morbo.t".

1.50  2011-07-01
  - Removed idle event from Mojo::IOLoop.
  - Updated jQuery to version 1.6.2.
  - Fixed small routes bug that prevented some false values from disabling
    format detection.

1.49  2011-06-30
  - Added EXPERIMENTAL modules Mojo::IOWatcher and Mojo::Resolver, which
    contain extracted functionality from Mojo::IOLoop.
  - Added EXPERIMENTAL module Mojo::Transactor, which contains extracted
    functionality from Mojo::UserAgent.
  - Added EXPERIMENTAL support for simple alternative placeholder values to
    routes.
  - Improved Morbo restarter to also check for changed file size in addition to
    mtime.
  - Fixed many small routes bugs.
  - Fixed small reparse bug in Mojo::Parameters. (dmw397)
  - Fixed url_for to incorporate trailing slash for current route.
  - Fixed a few small error reporting bugs around Mojo::UserAgent.
  - Fixed portability issue in "command.t".

1.48  2011-06-24
  - Added debug log message for missing action to router.
  - Improved Mojo::Command tests.
  - Fixed support for multiple checkboxes with same name in
    Mojolicious::Plugin::TagHelper. (sri, kimoto)
  - Fixed portability issue in "lite_app.t". (marcus)

1.47  2011-06-22
  - Added EXPERIMENTAL callback condition plugin.
  - Added EXPERIMENTAL host condition to Mojolicious::Plugin::HeaderCondition.
  - Added host support to Mojolicious::Plugin::Mount. (sri, alnewkirk)
  - Removed Mojolicious::Plugin::AgentCondition and added its functionality to
    Mojolicious::Plugin::HeaderCondition.
  - Improved overall performance slightly.
  - Fixed render_static return value.
  - Fixed dispatcher return values.

1.46  2011-06-21
  - Improved Morbo to only attempt restarting applications after a file change
    has been detected.
  - Improved overall performance by about 3% with many small optimizations.
  - Improved query string support in Mojo::Parameters.
  - Fixed Windows restart issues in Morbo. (lammel)
  - Fixed missing plugin error message.

1.45  2011-06-20
  - Fixed an exception with layout rendering bug.
  - Fixed small Mojo::Parameters bug.

1.44  2011-06-18
  - Added EXPERIMENTAL self-restarting Morbo development web server and
    removed old "--reload" support since there have been too many negative side
    effects. This also improves overall performance by about 5-10% and reduces
    memory usage by about 10%.
  - Added EXPERIMENTAL application mount plugin.
  - Added EXPERIMENTAL --help support for all commands.
  - Updated prettify.js to version 1-Jun-2011.
  - Updated WebSocket diagnostics test in Mojo::HelloWorld for latest Firefox
    Aurora.
  - Improved inline template and static file performance.
  - Improved whitespace trimming in Mojo::DOM. (sri, DaTa)
  - Fixed Morbo file discovery bug. (crab)
  - Fixed a few application embedding bugs.
  - Fixed link generation bug in Mojolicious::Plugin::PodRenderer.
  - Fixed small embedding bug in Mojolicious::Plugin::RequestTimer.

1.43  2011-06-13
  - Improved after_dispatch hook by allowing it to change session data.
  - Fixed a bug in Mojo::Template that caused template blocks to be auto
    escaped.

1.42  2011-06-09
  - Added EXPERIMENTAL support for unquoted wildcard placeholders in
    Mojolicious::Routes::Pattern.
  - Added EXPERIMENTAL status code support to rendred method in
    Mojolicious::Controller.
  - Updated WebSocket implementation to ietf-08.
  - Fixed a bug that prevented Mojo::Base subclasses from using the "-base"
    flag.
  - Fixed a few small default status code bugs.
  - Fixed route suggestion bug in "not_found.development.html.ep".

1.41  2011-06-03
  - Fixed param list bug in Mojolicious::Controller.
  - Fixed overload bug in Mojo::DOM. (yko)

1.4  2011-06-02
  - Code name "Smiling Face With Sunglasses", this is a major release.
  - Deprecated Mojo::DOM add_after method in favor of the append method.
  - Deprecated Mojo::DOM add_before method in favor of the prepend method.
  - Deprecated all methods containing the word "inner" in favor of ones
    containing the word "content".
  - Added EXPERIMENTAL direct hash access for attributes and child element
    accessor support to Mojo::DOM.
  - Added EXPERIMENTAL support for collections to children method and element
    accessors in Mojo::DOM.
  - Added EXPERIMENTAL to_xml method to Mojo::DOM collections.
  - Added EXPERIMENTAL eval command.
  - Added EXPERIMENTAL load_app method to Mojo::Server.
  - Added append_content and prepend_content methods to Mojo::DOM.
  - Added HTTP method support to routes command. (trone)
  - Improved long poll support.
  - Improved compatibility with Feersum PSGI web servers. (audreyt)
  - Switched from Storable to JSON serialization for Mojolicious sessions to
    increase efficiency.
  - Reduced memory usage of Hypnotoad workers by at least 1MB (each).
  - Fixed a small Mojo::Loader bug.
  - Fixed small Windows line ending problem in Mojo::Command. (Akron)
  - Fixed a UTF-8 bug in Mojo::Exception. (jamadam)
  - Fixed "Can't locate object method x via package y" error messages.
  - Fixed woff MIME type.

1.34  2011-05-22
  - Fixed nested selector bug in Mojo::DOM.
  - Fixed small Mojo::DOM HTML5 bug.

1.33  2011-05-20
  - Added EXPERIMENTAL helper function to Mojolicious::Lite.
  - Updated jQuery to version 1.6.1.
  - Improved Mojo::JSON string escaping to make JSONP easier.
  - Improved reloader slightly.
  - Moved all bundled templates to "lib/Mojolicious/templates".
  - Fixed reserved GET/POST param handling in Mojolicious::Controller.
  - Fixed small XML semantics bug in Mojo::DOM.
  - Fixed all blocking server bindings to default to a 404 status code.

1.32  2011-05-11
  - Added EXPERIMENTAL name support for template exceptions.
  - Updated IO::Socket::SSL requirement to 1.43 due to bugs in older versions.
    Note that the version requirement will keep getting updated until we
    encounter a version that is not broken most of the time.
  - Improved reloading slightly by allowing it to clean up the main
    namespace.
  - Fixed enabling of Perl 5.10 features in Mojo::Base and Mojolicious::Lite.
    (garu, sri)
  - Fixed render_later to prevent delayed rendering warning.

1.31  2011-05-08
  - Reverted deprecation of Perl 5.8.x support, by popular demand.
  - Added FAQ entry to clarify the Perl 5.8.x situation.
  - Fixed case-sensitivity of Mojo::DOM in XML mode.
  - Fixed pseudo-class case handling in Mojo::DOM. (Akron)

1.3  2011-05-05
  - Code name "Tropical Drink", this is a major release.
  - Deprecated Perl 5.8.x support.
  - Deprecated Mojolicious::Renderer get_inline_template method in favor of the
    get_data_template method.
  - Added EXPERIMENTAL before_render hook.
  - Added EXPERIMENTAL hook function to Mojolicious::Lite.
  - Added workaround for uWSGI bug. (miyagawa)
  - Improved Mojo::Template and Mojolicious::Routes exception handling.
  - Improved debug log messages for template rendering.
  - Updated Mojo::Base and Mojolicious::Lite to enable Perl 5.10 features if
    available.
  - Updated jQuery to version 1.6.
  - Fixed PSGI read error handling.
  - Fixed 64-bit WebSocket message bug.
  - Fixed small Windows bug.

1.22  2011-05-02
  - Added opposite tests to Test::Mojo.
  - Deprecated Mojo::IOLoop on_tick method in favor of the recurring method.
    (sbertrang)
  - Deprecated Mojo::IOLoop on_hup method in favor of the on_close method.
  - Deprecated on_build_tx methods in favor of on_transaction methods.
  - Deprecated on_handler methods in favor of on_request methods.
  - Updated WebSocket implementation to ietf-07.
  - Renamed on_idle method in Mojo::IOLoop to idle.
  - Reduced memory requirements of cached templates by up to 50%.
  - Fixed controller specific render_exception and render_not_found methods.
  - Fixed Mojo::JSON string size limit. (henryykt)
  - Fixed Windows bug in Mojo::Asset::File. (kimoto)
  - Fixed small memory leak.
  - Fixed small stack localization bug.
  - Fixed small tag helper escaping bug. (cheese)

1.21  2011-04-20
  - Improved temporary file handling to avoid a very unlikely race condition.
    (crab)
  - Fixed "multipart/form-data" generation bug in Mojo::UserAgent.
    (sugar, sharifulin, sri)

1.20  2011-04-20
  - Improved size limit handling.

1.19  2011-04-20
  - Fixed size limits in message parser.

1.18  2011-04-19
  - Added support for X-Forwarded-HTTPS and X-Forwarded-Host headers.
  - Added argument localization to the include helper. (crab, moritz, sri)
  - Fixed test case.

1.17  2011-04-18
  - Deprecated Mojolicious process method in favor of the on_process attribute.
  - Added Failraptor.
  - Added support for MOJO_CERT_FILE and MOJO_KEY_FILE environment variables.
  - Added EXPERIMENTAL xml attribute to Mojo::DOM.
  - Added EXPERIMENTAL build_url method to Test::Mojo.
  - Added EXPERIMENTAL dnt (Do Not Track) method to Mojo::Headers.
  - Added WOFF MIME type. (reezer)
  - Updated WebSocket implementation to ietf-06. (sri, crab)
  - Updated jQuery to version 1.5.2.
  - Improved HTML healing capabilities of Mojo::DOM.
  - Improved Mojo::DOM to ignore useless end tags.
  - Improved Mojo::DOM inline DTD support. (Akron)
  - Improved Mojo::DOM text extraction.
  - Improved Mojolicious::Plugin::I18n default lexicon handling. (yko)
  - Improved a Mojo::IOLoop workaround.
  - Moved all bundled static files to "lib/Mojolicious/public".
  - Made Test::Mojo a little more user-friendly.
  - Fixed small CGI/FastCGI header generation bug.
  - Fixed readonly handle support in Mojo::IOLoop.
  - Fixed a Mojo::IOLoop resolver bug. (Charlie Brady)
  - Fixed small Mojo::Asset::File bug. (crab)
  - Fixed small Mojo::DOM selector bug. (tempire)
  - Fixed small Mojo::DOM namespace detection bug. (Akron)
  - Fixed small route pattern escaping bug.
  - Fixed small reload bug.
  - Fixed small documentation browser bug. (kberov)
  - Fixed cookbook recipe. (moritz)

1.16  2011-04-15
  - Emergency release for a critical security issue that can expose files on
    your system, everybody should update! (perlninja, sri)

1.15  2011-03-18
  - Changed default log level in "production" mode from "error" to "info".
  - Improved lookup method in Mojo::IOLoop.
  - Fixed small Mojo::Util bug.
  - Fixed a serious Mojo::DOM bug. (moritz)

1.14  2011-03-17
  - Added support for multiple DNS servers to Mojo::IOLoop.
  - Added config helper to Mojolicious::Plugin::Config.
  - Changed resolv.conf parser in Mojo::IOLoop to use the first nameserver.
  - Changed lookup method in Mojo::IOLoop to pick records randomly.
  - Fixed small optional tag bugs in Mojo::DOM.
  - Fixed JavaScript/CSS bug in Mojo::DOM.
  - Fixed Windows home directory detection bug. (Akron)
  - Fixed a few warnings.

1.13  2011-03-14
  - Deprecated Mojo::Client in favor of the much sleeker Mojo::UserAgent.
  - Made the most common Mojo::IOLoop methods easier to access for the
    singleton instance.

1.12  2011-03-10
  - Relicensed all artwork to CC-SA, so the whole distribution can be
    considered "open" again.
  - Deprecated MOJO_JSON_CONFIG environment variable in favor of MOJO_CONFIG.
    (crab)
  - Added EXPERIMENTAL support for IPv6.
  - Added more Perl-ish configuration plugin.
  - Added drain callback support for WebSockets.
  - Added line numbers to Mojo::JSON error messages. (marcus)
  - Removed experimental status from Hypnotoad and
    Mojolicious::Plugin::TagHelpers.
  - Removed experimental status from many attributes and methods all over
    Mojolicious.
  - Improved attribute support of the select_field tag helper. (yko)
  - Improved text_field tag helper.
  - Improved tag helper attribute escaping.
  - Improved attrs method in Mojo::DOM.
  - Updated jQuery to version 1.5.1.
  - Fixed XSS issue in link_to helper.
  - Fixed route unescaping bug.
  - Fixed small Mojo::DOM bug. (yko)
  - Fixed small documentation bug.

1.11  2011-02-18
  - Deprecated Mojo::Client async method in favor of the managed attribute.
  - Added TTL support to resolve in Mojo::IOLoop. (und3f)
  - Relaxed charset handling in and around Mojo::DOM a bit.
  - Fixed Mojo::Client async mode.
  - Fixed session cookie encoding bug.
  - Fixed small route bug.
  - Fixed small Hypnotoad bug. (bduggan)

1.1  2011-02-14
  - Code name "Smiling Cat Face With Heart-Shaped Eyes", this is a major
    release.
  - Deprecated wildcard route names in favor of automatically generated
    default names for all routes.
  - Removed native IIS support since it has become unmaintainable.
  - Added EXPERIMENTAL much prettier attribute generator to Mojo::Base.
  - Added EXPERIMENTAL on_start attribute to Mojo::Client.
  - Added EXPERIMENTAL support for route shortcuts.
  - Added EXPERIMENTAL support for NO_PROXY. (l0b0)
  - Added EXPERIMENTAL user_agent attribute to Mojo::Client.
  - Added EXPERIMENTAL support for mode specific not found and exception
    templates.
  - Added EXPERIMENTAL support for route caching.
  - Added EXPERIMENTAL support for CSS3 selectors to the get command.
  - Added image helper to Mojolicious::Plugin::TagHelpers.
  - Added support for secure session cookies. (crab)
  - Improved HTML5 compatibility of Mojo::DOM.
  - Replaced Mojo::JSON parser with a much faster and stricter implementation.
    (chansen)
  - Improved Mojo::JSON string encoding. (chansen)
  - Updated to jQuery to version 1.5.
  - Removed experimental status from Mojo::DOM and ojo.
  - Removed experimental status from many attributes and methods all over
    Mojolicious.
  - Renamed after and before in Mojo::DOM to add_after and add_before.
  - Improved documentation browser slightly.
  - Improved CSS3 support in Mojo::DOM.
  - Changed Mojolicious::Plugin::EplRenderer to not render 404 errors for
    missing templates.
  - Changed exception template to use pre instead of h1 tags for error
    messages. (vaneska)
  - Made Simpsons and Futurama quotes easier to distinguish from normal
    comments.
  - Made routes reusable outside of Mojolicious. (forwardever)
  - Fixed a few home detection bugs.
  - Fixed a complicated application embedding bug.
  - Fixed a Apache mod_rewrite compatibility bug in Mojo::Message::Request.
    (dekimsey)
  - Fixed a small bug in the relaxed HTTP parser.
  - Fixed a small bug in Mojolicious::Command::Get.
  - Fixed a small bug in Mojolicious::Plugin::JsonConfig.
  - Fixed support for broken redirects.
  - Fixed --reload delay problem.
  - Fixed shagadelic function of Mojolicious::Lite.
  - Fixed optgroup support in select_field helper.
  - Fixed tests that can't run on Windows.
  - Fixed delayed rendering bug. (yko)
  - Fixed nested route bug.
  - Fixed a small multipart parser bug.
  - Fixed small any route bug.
  - Fixed small empty route bug.
  - Fixed URL merging in Mojo::URL.
  - Fixed version detection in Mojolicious::Command::Version.
  - Fixed Mojo::Client cloning.

1.01  2011-01-06
  - Relicensed some of the images to make sure Mojolicious can be shipped with
    commercial products.
  - Updated IO::Socket::SSL requirement to 1.37 due to bugs in older versions.
  - Added EXPERIMENTAL TLS certificate authentication support. (tempire)
  - Added EXPERIMENTAL title helper.
  - Added EXPERIMENTAL render_later method to Mojolicious::Controller.
  - Improved test. (Charlie Brady)
  - Improved charset handling in Mojolicious slightly.
  - Updated application generators with base tags.
  - Fixed relative path handling in Mojo::URL.
  - Fixed punycode bug. (kits)
  - Fixed a bug where the static dispatcher would eat the flash.

1.0  2010-12-26
  - Code name "Snowflake", this is a major release.
  - Deprecated session method in Mojolicious.
  - Deprecated handler and helper attributes in Mojolicious::Renderer.
  - Added new exception and not found templates.
  - Added documentation browser to Mojolicious::Plugin::PodRenderer.
  - Added EXPERIMENTAL content_for helper.
  - Disabled debug log messages for static files.
  - Improved Hypnotoad web server to restart workers regularly.
  - Improved query manipulation in Mojo::URL. (yko)
  - Improved TLS exception handling.
  - Improved nested exception handling. (spleenjack)
  - Fixed relative path handling.
  - Fixed application generator. (yko)
  - Fixed support for multiline expressions in Mojo::Template.
  - Fixed multiple --reload related leaks and reduced overall memory usage.
  - Fixed exception handling for included templates.
  - Fixed a small Mojo::Server::PSGI header bug.
  - Fixed a small Mojo::DOM selector bug.

0.999950  2010-11-30
  - Added EXPERIMENTAL Hypnotoad web server.
  - Added EXPERIMENTAL built-in exception and not found templates.
  - Added put and del functions to Mojolicious::Lite.
  - Added on_idle and on_tick event handlers to Mojo::IOLoop.
  - Added "*" query support to the Mojo::IOLoop resolver.
  - Added ability to pass plain connection ids to Mojo::Client.
  - Added ability to call Mojo::Base::attr as an instance method. (charsbar)
  - Improved Mojolicious::Lite ability to recover from syntax errors.
  - Improved number detection in Mojo::JSON.
  - Improved Mojo::ByteStream encode/decode. (marcus)
  - Fixed a bug where an empty Mojo::IOLoop would never block.
  - Fixed a possible Mojo::IOLoop descriptor leak.
  - Fixed a small route condition bug.
  - Fixed a small test glitch on some Linux distributions.

0.999941  2010-11-19
  - Allow Mojolicious::Lite style routes in Mojolicious.
  - Added base_tag helper to Mojolicious::Plugin::TagHelpers.
  - Added CNAME and NS record type support to the Mojo::IOLoop resolver.
  - Improved Mojo::IOLoop responsiveness.
  - Made Mojo::IOLoop resolver results more useful.

0.999940  2010-11-15
  - Fixed IO::Socket::SSL 1.34 compatibility.

0.999939  2010-11-15
  - Removed IPv6 support until Perl itself gets better support for it.
  - Added MX and PTR record type support to the Mojo::IOLoop resolver.
    (und3f)
  - Fixed a Mojolicious::Static rendering bug.
  - Fixed a bug that forced connect in Mojo::IOLoop to block.
  - Fixed a bug that prevented on_finish to be triggered for interrupted
    connections.
  - Fixed a TLS accept bug in Mojo::IOLoop.
  - Fixed a small bug in Mojo::Parameters. (spleenjack)
  - Fixed javascript and stylesheet helper. (sshaw)
  - Fixed IPv4 address detection bug in Mojo::URL.
  - Fixed a Mojo::Client bug where interrupted transactions were still
    successful.
  - Fixed a small reloader bug.

0.999938  2010-11-09
  - Moved all commands into the Mojolicious namespace.
  - Fixed typo.
  - Removed OS X resource fork files.

0.999937  2010-11-09
  - Deprecated the MojoX namespace and merged affected modules into the
    Mojolicious namespace, this will make reference documentation a lot more
    accessible.
  - Added important module overview to Mojolicious. (rhaen)
  - Improved Mojo::Loader to allow Mojolicious recovering from tricky syntax
    errors in Controllers.
  - Improved param method in MojoX::Dispatcher::Routes::Controller.
  - Fixed escaping in Mojo::Parameters to work better in the real world.
  - Fixed a small inflate command bug.

0.999936  2010-11-03
  - Improved Mojo::Template performance slightly. (kimoto)
  - Fixed a serious WebSocket bug.
  - Fixed non-blocking DNS resolver bug.
  - Fixed connection reset handling in Mojo::IOLoop.

0.999935  2010-11-03
  - Added EXPERIMENTAL module Mojo::Util as a faster low-level alternative to
    Mojo::ByteStream and rewrote many internals to use it instead.
  - Improved Mojo::IOLoop performance by about 20%.
  - Made automatic file storage upgrade smarter.
  - Fixed overload stringification and improved overall performance by about
    25%.
  - Fixed start-line/header buffering and improved performance by 8%.

0.999934  2010-11-01
  - Fixed relaxed HTTP parsing.

0.999933  2010-10-30
  - Fixed small connect bug in Mojo::IOLoop.
  - Fixed WebSocket handshake.

0.999932  2010-10-29
  - Deprecated the old plugin hook calling convention and added EXPERIMENTAL
    hook method to Mojolicious.
  - Fixed a few small connect bugs in Mojo::IOLoop.

0.999931  2010-10-25
  - Removed tag helpers label and img.
  - Renamed tag helper script to javascript and added CDATA support.
  - Renamed tag helper input to input_tag.
  - Added EXPERIMENTAL non-blocking DNS support to Mojo::IOLoop. (und3f)
  - Added EXPERIMENTAL support for IPv4 and IPv6 address checks to Mojo::URL.
  - Added stylesheet tag helper.
  - Added before and after methods to Mojo::DOM.
  - Hide command overview from prove. (omega)
  - Default to silent tests in Test::Mojo.
  - Fixed optional value support in Mojo::Cookie.
  - Fixed shortcut methods in Mojo::Headers to not be context aware.
  - Fixed url_for to not inherit captures for new endpoints.

0.999930  2010-10-18
  - Code name "Hot Beverage", this is a major release.
  - Removed Mojo::Server::Daemon::Prefork due to unfixable design flaws
    regarding WebSocket support, please use a PSGI server instead for HTTP
    production setups. For scalable WebSocket deployment we will introduce a
    whole new server in one of the next releases!
  - Deprecated old Mojo::Template block syntax and added a very pretty
    replacement. (See documentation for more)
  - Deprecated helper method in Mojolicious::Controller.
  - Deprecated all *_cb methods (and finished/receive_message) in favor of on_*
    methods.
  - Deprecated process method in Mojo::Client and added new start method.
  - Replaced the "mojolicious" command with "mojo", for convenience.
  - Removed Mojo::Command::Generate::App.
  - Renamed the methods name and replace_content to type and replace_inner in
    Mojo::DOM.
  - Added EXPERIMENTAL support for indented Perl lines in Mojo::Template.
  - Added EXPERIMENTAL support for --mode and --home options to all Mojolicious
    commands.
  - Added EXPERIMENTAL support for helper methods.
  - Added EXPERIMENTAL helper method to Mojolicious.
  - Added EXPERIMENTAL support for inline rendering to Mojolicious.
  - Added EXPERIMENTAL memorize helper to Mojolicious::Plugin::DefaultHelpers.
    (ptomli)
  - Added EXPERIMENTAL write, write_chunk and rendered methods to
    Mojolicious::Controller.
  - Added EXPERIMENTAL support for loading of plugins by full module name.
  - Added EXPERIMENTAL tag helpers to Mojolicious.
  - Added EXPERIMENTAL support for radio buttons and select fields to
    Mojolicious::Plugin::TagHelpers. (kvorg)
  - Added EXPERIMENTAL is_limit_exceeded, max_line_size and max_message_size
    methods to Mojo::Message.
  - Added EXPERIMENTAL automatic relaxed parsing support for HTTP responses.
  - Added while, until and inner_xml methods for Mojo::DOM collections. (vti)
  - Added b function to all Mojo::Template templates.
  - Added selector support to the dom method of Mojo::Message. (marcus)
  - Added x function to ojo. (DaTa)
  - Added failed request warnings to ojo. (marcus)
  - Added support for selector groups to Mojo::DOM.
  - Added more attribute selectors, pseudo-classes and combinators to
    Mojo::DOM.
  - Added support for mode specific configuration files to
    Mojolicious::Plugin::JsonConfig. (marcus)
  - Added reserved route name current.
  - Simplified transaction pausing by replacing it with an automatism.
  - Improved RFC 3986 compliance of Mojo::Path. (janus)
  - Improved Mojo::Server::PSGI to preload applications.
  - Improved FastCGI detection for Dreamhost. (garu)
  - Improved keep-alive timeout handling in Mojo::Client.
  - Improved Mojo::ByteStream performance. (mons)
  - Improved Mojo::Parameters performance. (kimoto)
  - Improved Mojo::Message::Response parser resilience.
  - Improved template class handling in MojoX::Renderer. (vti)
  - Fixed a serious design flaw in Mojo::Message and made long polling much
    easier.
  - Fixed a bug where Mojo::IOLoop connections could be closed too early.
  - Fixed a bug where a broken renderer could cause a fatal exception.
  - Fixed HTTPS support for CGI environments.
  - Fixed a auto rendering bug related to bridges.
  - Fixed Mojo::IOLoop Windows support.
  - Fixed Mojo::DOM class selector bug. (tempire)
  - Fixed small render bug. (skaurus)
  - Fixed a small renderer bug.
  - Fixed automatic reloading for external templates.
  - Fixed after_build_tx plugin hook callback order.
  - Fixed a small under bug in Mojolicious::Lite.
  - Fixed logging of UTF-8 errors. (und3f)
  - Fixed Mojo::DOM parser bug. (esskar)
  - Fixed TLS handshake bug in Mojo::IOLoop. (und3f)
  - Fixed a small Test::Mojo bug.
  - Fixed multiple route condition bugs. (esskar)
  - Fixed a small relative path bug in Mojo::URL.
  - Fixed POD renderer bug. (vti)
  - Fixed a multipart parser bug affecting mostly file uploads.
  - Fixed input tag helper escaping. (vti)
  - Fixed url_for WebSocket support.
  - Fixed url_for format handling.

0.999929  2010-08-17
  - Removed OS X resource fork files.

0.999928  2010-08-15
  - Fixed a security problem with CGI environment detection.
  - Fixed redirect_to without content and render_static bug.
  - Fixed nested partial rendering bug. (yko)
  - Fixed multiple small Mojo::DOM bugs. (yko)

0.999927  2010-08-15
  - Code name "Comet", this is a major release.
  - Added EXPERIMENTAL method defaults to Mojolicious.
  - Added EXPERIMENTAL method detour to MojoX::Dispatcher::Routes.
  - Added EXPERIMENTAL attribute partial to MojoX::Routes.
  - Added EXPERIMENTAL CSS3 selector tests to Test::Mojo.
  - Added EXPERIMENTAL method test_server to Mojo::Client.
  - Added EXPERIMENTAL one-liner module ojo.
  - Added EXPERIMENTAL support for static files in the DATA section of
    Mojolicious applications.
  - Added EXPERIMENTAL Bonjour support.
  - Added EXPERIMENTAL support for route name generation.
  - Added graceful shutdown support to Mojo::Server::Daemon.
  - Added multiple guides and improved documentation substantially.
  - Added finished callback support for HTTP transactions.
  - Added relative path support to Mojo::URL. (marcus)
  - Added simple iterator support to Mojo::DOM.
  - Added XML namespace support to Mojo::DOM.
  - Added is_xhr method to Mojo::Message::Request.
  - Added detect_proxy method to Mojo::Client. (DaTa)
  - Added say and trim methods to Mojo::ByteStream.
  - Added custom socket support to Mojo::Client.
  - Added SHA1 support to Mojo::ByteStream. (vti)
  - Added app helper.
  - Renamed attributes method in Mojo::DOM to attrs.
  - Renamed search method in Mojo::DOM to find.
  - Cleaned up tests. (memowe)
  - Cleaned up regular expressions in Mojo::DOM. (mpu)
  - Improved Mojo::Client error logging.
  - Improved Mojo::Template error messages.
  - Improved generated multipart messages to be 2 bytes shorter.
    (John Kingsley)
  - Improved conditions by allowing them to access the stash.
  - Fixed memory and file descriptor leaks in Mojo::Client.
  - Fixed Mojo::Server::Daemon::Prefork to use a random lock file by default.
  - Fixed Mojo::DOM to support escaped selectors.
  - Fixed Mojo::DOM parser bugs.
  - Fixed Mojo::DOM child listing bug. (evt)
  - Fixed Mojo::DOM multiline attribute bug. (tempire)
  - Fixed charset detection of the dom builder in Mojo::Message. (und3f)
  - Fixed json/data rendering with layouts in MojoX::Renderer.
  - Fixed Mojo::IOLoop to not stop unexpectedly.
  - Fixed graceful shutdown in Mojo::Server::Daemon::Prefork.
  - Fixed Mojo::Server::CGI and Mojo::Server::FastCGI to be more portable.
  - Fixed poll + tls support.
  - Fixed language switching in Mojolicious::Plugin::I18n.
  - Fixed async Mojo::Client tests.
  - Fixed HTML1 and HTML5 compatibility of Mojo::DOM.
  - Fixed a selector bug in Mojo::DOM.
  - Fixed environment detection.
  - Fixed Mojolicious application embedding.
  - Fixed a tutorial bug. (zoul)
  - Fixed tests to not use any optional modules.
  - Fixed small Mojolicious::Lite bug. (sharifulin)
  - Fixed Mojo application generator. (zakame)
  - Fixed edgy stringified return value bug in MojoX::Dispatcher::Routes.
    (DaTa)
  - Fixed route rendering bug. (koban)
  - Fixed route without namespace bug.
  - Fixed route with mixed format bug. (sharifulin)
  - Fixed small url_for bug.
  - Fixed Mojo::IOLoop to not connect to TLS hosts without checking TLS
    support first. (ashleydev)
  - Fixed multiple WebSocket bugs.
  - Fixed Test::Mojo::Server to be more portable. (afresh1)
  - Fixed url_for to not expose userinfo in absolute URLs.
  - Fixed path detection bug in generated scripts. (merlyn)
  - Fixed a small redirect bug in Mojo::Client.
  - Fixed a route callback inheritance bug.
  - Fixed a security problem in the HMAC-MD5 implementation. (vti)

0.999926  2010-06-07
  - Added version requirement for all optional dependencies.
  - Fixed async client processing.
  - Fixed small renderer bug.

0.999925  2010-06-07
  - Updated WebSocket implementation to draft 76, NOTE THAT THIS CHANGE IS NOT
    BACKWARDS COMPATIBLE!!! (sadly we have no choice when the spec changes)
  - Increased Perl version requirement to 5.8.7 due to Unicode bugs in earlier
    releases.
  - Switched to app->start instead of shagadelic as default way to start
    Mojolicious::Lite apps in the documentation.
  - Made tutorial examples more business friendly.
  - Added the ability to use Mojolicious::Lite apps as Mojolicious controllers.
  - Added EXPERIMENTAL XML DOM parser with CSS3 selector support.
  - Added EXPERIMENTAL tag_helper plugin to Mojolicious. (vti)
  - Added EXPERIMENTAL success method to Mojo::Transaction.
  - Added EXPERIMENTAL json method and json_class attribute to Mojo::Message.
  - Added EXPERIMENTAL idle_cb attribute to Mojo::IOLoop.
  - Added more Perl-ish block syntax to Mojo::Template.
  - Added non-blocking TLS handshake support to Mojo::IOLoop.
  - Added proxy support to Mojo::Client.
  - Added the ability to have dispatch plugins.
  - Added "under" to Mojolicious::Lite.
  - Added file upload support to Mojo::Client. (yko)
  - Added higher precision timers to Mojo::IOLoop. (vti)
  - Improved exception handling.
  - Improved IIS compatibility of the CGI implementation.
  - Improved routes by making the leading slash optional and storing route
    names in the stash.
  - Converted README to markdown. (memowe)
  - Fixed connection keep-alive with epoll.
  - Fixed bridge bug in MojoX::Routes::Match. (Oleg Zhelo, Dmitry Konstantinov)
  - Fixed argument handling of Mojo::Template blocks. (afresh1)
  - Fixed a stash localization bug. (und3f)
  - Fixed Mojo::Log to use flock to sync log file writing.
  - Fixed daemons to listen on "::" for IPv6 and "0.0.0.0" for IPv4 with a
    wildcard address.
  - Fixed lock_cb and unlock_cb exceptions to be fatal in Mojo::IOLoop, this
    makes Mojo::Server::Daemon::Prefork much more solid. (ask)
  - Fixed a bug that prevented undef values in the stash. (garu)
  - Fixed Mojo::Message::headers chaining. (markstos)
  - Fixed a bug in Mojo::JSON that prevented BOM characters in strings.
    (chansen)
  - Fixed Mojo::JSON to not unescape broken surrogates. (chansen)
  - Fixed UTF-8 bug in Mojolicious::Plugin::JsonConfig. (vti)
  - Fixed Mojo::Parameters to accept array values. (konstantinov)
  - Fixed IRI routes in Mojolicious.
  - Fixed multiple path encoding bugs.
  - Fixed a loader bug.
  - Fixed reloading of inflated Mojolicious::Lite templates.
  - Fixed the client transaction builder. (Curt Tilmes)
  - Fixed unix domain socket support. (sharifulin)
  - Fixed a few regex bugs. (vti)
  - Fixed POD. (memowe)

0.999924  2010-03-08
  - Added default TLS cert and key to Mojo::IOLoop to make HTTPS testing
    easier, so "mojo daemon --listen https://*:3000" now just works.
  - Added request limit support to the daemons.
  - Added basic authentication and proxy authentication support to
    Mojo::Message::Request. (esskar)
  - Added tick callback to Mojo::IOLoop to make mixing multiple event loops
    trivial.
  - Added the ability to pass arguments to Mojo::Template blocks.
  - Added layout support for partial rendering, in addition all render
    arguments are now localized.
  - Relaxed Mojo::Server::CGI read timeout.
  - Fixed ioloop timers to actually work.
  - Fixed PSGI environment auto detection and removed .psgi file generator
    since it has become obsolete.
  - Fixed Mojolicious sessions to remove the session cookie immediately if it's
    not needed anymore. (ask)
  - Fixed routes method condition to consider GET and HEAD equal.
  - Fixed test requiring Perl 5.10.
  - Fixed a loader bug. (mvuets)
  - Fixed layout and extends scope in MojoX::Renderer. (korshak)
  - Fixed daemons to create listen sockets before changing user and group.
    (xantus)

0.999923  2010-03-07
  - Made Mojo::Client sync by default with optional async support, this
    massively improves usability!
      my $tx = $client->get('http://mojolicious.org');
      print $client->get('http://search.cpan.org')->res->body;
      my $tx = $client->post_form('http://kraih.com', {q => 'mojo'});
  - Made plugins much more configurable.
  - Improved PSGI support and added psgi command.
  - Added automatic environment detection for Plack based servers, there is no
    technical way to detect all PSGI compliant servers yet though. That means
    "plackup myapp.pl" and "plackup script/my_app" should just work.
  - Added session and flash helpers.
  - Added finished callback to WebSocket client and server.
  - Added referrer method to Mojo::Headers. (esskar)
  - Added finish_cb callback to Mojo::Message.
  - Added render_data method to Mojolicious::Controller.
  - Added form-data tests for multiple browsers. (koban)
  - Changed Mojolicious default secret to a slightly more secure value.
    (xantus)
  - Allow parser errors to be handled by frameworks.
  - Removed bundled RFCs.
  - Fixed multiple Mojo::Template parser bugs.
  - Fixed epl rendering bug.
  - Fixed multipart form encoding and decoding.
  - Fixed IRI handling. (sharifulin)
  - Fixed mixed IRI/IDNA handling.
  - Fixed tmpdir detection.

0.999922  2010-02-11
  - Added session support.
  - Added signed cookie support.
  - Added I18N support. (vti, memowe)
  - Added template detection again, you can now just mix multiple template
    engines and the renderer will automatically pick the right template. So you
    don't have to use the handler argument anymore, even though it's still
    available and overrides auto detection.
  - Added Flash Policy Server example. (xantus)
  - Added more reference docs.
  - Added ".gitignore" generator command. (marcus)
  - Added automatic CGI/FastCGI environment detection to Mojo::Commands.
  - Renamed Mojolicious::Book to Mojolicious::Guides.
  - Removed hot deployment support for Windows, because of incompatibilities
    between Active Perl and Strawberry Perl.
  - Made process id and lock file defaults more user-friendly in
    Mojo::Server::Daemon.
  - Updated for Perl 5.12, not using the bytes pragma anymore.
  - Fixed a bug where WebSocket servers could not directly start sending
    messages.
  - Fixed connection id handling in Mojo::Client.
  - Fixed multiple epoll bugs.
  - Fixed Mojo::IOLoop connection check.
  - Fixed identification headers.
  - Fixed a bug where exception pages would be rendered multiple times.
  - Fixed reverse proxy support. (vti)
  - Fixed error state in Mojo::Stateful. (vti)
  - Fixed seek bug. (lee7)
  - Fixed a PSGI header bug. (lee7)

0.999921  2010-02-11
  - Fixed a small kqueue bug.

0.999920  2010-02-11
  - Code name "Snowman", this is a major release, which means deprecation
    policies apply. (See also "perldoc Mojolicious::Book::CodingGuidelines")
  - Renamed distribution from Mojo to Mojolicious.
  - Deprecated $VERSION in Mojo, new $VERSION lives in Mojolicious. Make sure
    to update your modules depending on Mojo to depend on Mojolicious in the
    future.
  - Deprecated Mojo::Transaction::Single, make sure to update all old code to
    use Mojo::Transaction::HTTP instead.
  - MOJO_RELOAD=1 now works with Mojolicious::Lite, have fun!
  - Allow reloading to be triggered once by a USR1 or WINCH (Windows) signal.
  - Added --reload option to all server bindings as an alternative to
    MOJO_RELOAD=1.
  - Added WebSocket support.
  - Added IPv6 support.
  - Added SSL/TLS support.
  - Added IDNA support.
  - Added UNIX domain socket support to daemons.
  - Added transparent kqueue and epoll support to daemons and client.
  - Added support for listening to multiple locations to the daemons.
      mojo daemon --listen http://127.0.0.1:3000
      mojo daemon --listen http://*:3000,http://*:3001,http://*:3002
      mojo daemon --listen http://[::1]:3000
      mojo daemon --listen https://*:443:/x/server.crt:/x/server.key
  - Added routes captures to params in Mojolicious.
  - Added native PSGI support.
  - Added the ability to have multiple Mojolicious::Lite apps at once.
    (Mojolicious::Lite is not a singleton anymore!)
  - Added charset plugin to Mojolicious. (charsbar)
  - Added simple reverse proxy support.
  - Added simpler way to define default controller and action for a route.
      $r->route('/foo')->to('mycontroller#myaction');
  - Added simple way to define default controller or action for a route.
    (mvuets)
      $r->route('/foo/:controller')->to('#myaction');
      $r->route('/foo/:action')->to('mycontroller#');
  - Added multipart post support to Test::Mojo. (yuki-kimoto)
  - Added env attribute to Mojo::Message::Request.
  - Added range support to MojoX::Dispatcher::Static. (xantus)
  - Added version command.
  - Added after_build_tx plugin hook.
  - Added timer support to Mojo::IOLoop.
  - Added the ability to run multiple concurrent ioloops that block each other.
  - Added default_template_class attribute to MojoX::Renderer.
  - Added render_static method to Mojolicious::Controller.
  - Added support for embedded Mojolicious applications.
  - Added json_config plugin to Mojolicious. (vti)
  - Added the ability to reload the application and (graceful) restart all
    children to the prefork daemon.
  - Added to_hash and from_hash methods to Mojo::Headers. (vti)
  - Added post_form method to Mojo::Client.
  - Added find_route method to MojoX::Routes.
  - Added buffer size limits to the message parser.
  - Added child_status method to Mojo::Server::Daemon::Prefork. (und3f)
  - Added header_condition plugin to Mojolicious. (xantus)
  - Added finish method to Mojolicious::Controller.
  - Added WebSocket support to Mojolicious and Mojolicious::Lite.
  - Added message body support to Mojo::Client API. (tempire)
  - Added stash helper.
  - Added POD renderer plugin to Mojolicious. (vti)
  - Added inflate command to Mojolicious. (vti, korshak)
  - Added singleton support to Mojo::Client.
  - Started working on the Mojolicious book.
  - Started adding reference documentation. (marcus)
  - Improved HTTP 1.1 state machine.
  - Improved exception handling in Mojo::Client, Mojo::Server::Daemon and
    Mojo::IOLoop.
  - Disabled Nagle's algorithm in Mojo::IOLoop.
  - Changed the testing framework to always run real world tests with daemon
    and TCP connections.
  - Changed exceptions to stay out of your way as much as possible.
  - Made all Mojolicious after_* plugin hooks run in reverse order.
  - Made param decoding more defensive and allow malformed data to pass through
    for debugging.
  - Made Mojo::IOLoop very hard to kill.
  - Reduced Mojolicious log output outside of development mode.
  - Polished Mojo::Client API.
  - Fixed connect error handling in Mojo::Client.
  - Fixed double encoding of JSON data with charset plugin. (yuki-kimoto)
  - Fixed prefork daemon signal handling.
  - Fixed backslash encoding bug in Mojo::JSON.
  - Fixed memory leaks in Mojolicious plugins. (sharifulin)
  - Fixed memory leaks in .ep templates. (vti)
  - Fixed makefile and app generators.
  - Fixed a case where an ending tag would be interpreted as a line start in
    Mojo::Template.
  - Fixed multipart charset handling and added the ability to disable param
    decoding.
  - Fixed format detection bug. (marcus)
  - Fixed named url_for. (marcus)
  - Fixed decamelize of multiple uppercase characters.
  - Fixed plugins and commands to work with multiple namespaces and reloading.
  - Fixed multiple process calls in Mojo::Client.
  - Fixed a routes parser bug.
  - Fixed a bug that caused waypoint actions to run twice.
  - Fixed a bug where to_abs and to_rel could not be called multiple times on a
    Mojo::URL object. (vti)
  - Fixed development mode log level. (ka2u)
  - Fixed query string support in Mojo::URL. (vti)
  - Fixed rendering without template name.
  - Fixed large file upload bug. (vti, sharifulin)
  - Fixed a small inconsistency between relaxed and wildcared plaeholders.

0.999914  2009-11-24
  - Added the Mojolicious plugin system.
  - Added helper method to Mojolicious::Controller.
  - Added encoding support to post_form_ok in Test::Mojo.
  - Made cookies easier to set.
  - Fixed body_contains in Mojo::Content::Single. (yuki-kimoto)
  - Fixed utf8 output in STDERR log. (vti)

0.999913  2009-11-24
  - Added automatic content decoding to content helpers in Test::Mojo.
  - Added json test helper to Test::Mojo.
  - Added the ability to reset a test session in Test::Mojo. (yuki-kimoto)
  - Fixed Mojolicious::Renderer to always default to rendering a 404 error.
  - Fixed a cookiejar bug. (yuki-kimoto)

0.999912  2009-11-24
  - Improved ioloop performance. (gbarr)

0.999911  2009-11-14
  - Added template inheritance to Mojolicious.
  - Added block and capturing support to Mojo::Template.
  - Added trimming support to Mojo::Template.
  - Added new testing framework for Mojo and Mojolicious applications.
    (yuki-kimoto)
  - Added redirect support to Mojo::Client. (acajou)
  - Added cookie jar to Mojo::Client. (acajou)
  - Excluded Mojo::ByteStream objects from auto escaping.
  - Updated Mojolicious::Lite tutorial.
  - Fixed a case where routes captures got false positives.
  - Fixed literal name handling in Mojo::JSON. (rsp)
  - Fixed Unicode detection in Mojo::JSON. (rsp)
  - Fixed multiple small bugs in Mojo::JSON. (rsp)
  - Fixed Mojolicious default app tests. (yuki-kimoto)
  - Fixed Mojo::Server::FCGI compatibility.

0.999910  2009-11-14
  - Fixed url_for without endpoint bug.
  - Fixed BOM handling in Mojo::JSON. (rsp)
  - Fixed named redirect_to with arguments.
  - Improved Mojo::Exception. (yuki-kimoto)

0.999909  2009-11-11
  - Cleaned up tutorial.
  - FIxed renderer exception bug. (yuki-kimoto)

0.999908  2009-11-11
  - Fixed bridges/ladders.

0.999907  2009-11-11
  - Fixed another connection close bug in ioloop.
  - Fixed relaxed placeholder format handling in MojoX::Routes::Pattern.

0.999906  2009-11-11
  - Fixed connection close bug in ioloop.

0.999905  2009-11-11
  - Fixed routes bug that prevented the root from having formats.

0.999904  2009-11-10
  - Cleaned up examples.

0.999903  2009-11-10
  - Added ladders to Mojolicious::Lite, they are like bridges but lite.
  - Added encoding support to renderer. (likhatskiy)
  - Added dumper helper.
  - Made tmpdir in Mojo::Asset::File configurable.

0.999902  2009-11-01
  - Added include helper.
  - Optimized buffering a bit.
  - Fixed a case where multiple clients would taint the shared ioloop.
    (ferreira)
  - Fixed a case where non-existing actions were considered a server error.
    (Andre Vieth)

0.999901  2009-09-01
  - Added new Mojo::Client, because the old one had bugs that prevented proper
    scaling and could not be fixed otherwise. Note that this change is not
    backwards compatible, the decision to make it so close to the 1.0 release
    was not easy but the bugs were simply too serious.
  - Added native JSON support.
  - Added more designer friendly .ep templates to Mojolicious. The default
    template format for your application can be controlled with the
    default_handler attribute of the mojolicious renderer.
    Mojolicious (in the startup method):
      $self->renderer->default_handler('epl');
      $self->renderer->default_handler('ep');
    Mojolicious::Lite:
     app->renderer->default_handler('epl');
     app->renderer->default_handler('ep');
  - Added helper support for .ep templates.
  - Added support for MOJO_CHUNK_SIZE=1. (melo)
  - Added not_found.html.* templates.
  - Added input streaming support to Mojo::Content.
  - Added client, param, pause, redirect_to and resume to
    Mojolicious::Controller.
  - Renamed Mojo::Manual to Mojolicious::Book.
  - Updated Mojolicious lite_app generator to use .ep templates.
  - Fixed many bugs in the HTTP 1.1 state machine and added the ability to
    pause transactions.
  - Fixed param to be CGI.pm compatible.
  - Fixed a few cases where exceptions and not found events would result in
    empty pages.
  - Fixed layouts with partial templates.
  - Fixed encoding of non-utf8 form-data.
  - Fixed body callbacks to get automatic buffering.
  - Fixed a case where Mojo::Server::Daemon and Mojo::Client were too
    defensive and made them in turn 20 times faster.
  - Fixed keep-alive problem in Mojo::Transaction::Pipeline.
  - Fixed and simplified Mojo::Parameters. (gbarr)
  - Fixed xml_escape to use character semantics. (vti)
  - Fixed utf8 handling of routes captures. (vti)
  - Fixed body helper in Mojo::Message. (vti)
  - Fixed padding byte handling in Mojo::Server::FastCGI. (Jaroslav Muhin)
  - Fixed a few small parser bugs in MojoX::Routes.
  - Fixed Mojo::Asset::File. (Yuki Kimoto)
  - Fixed generated scripts. (Yuki Kimoto)
  - Fixed CHLD signal handler for prefork children. (sharifulin)
  - Fixed typo.

0.991251  2009-08-18
  - Fixed continue timeout handling in Mojo::Transaction::Simple.
  - Fixed undefined value in If-Modified-Since check in
    MojoX::Dispatcher::Routes.
  - Fixed MojoX::Routes::Pattern::match. (trendels)
  - Fixed default_handler in MojoX::Renderer. (sharifulin)
  - Fixed HTML5 tags. (xantus)
  - Fixed special Apache CGI environment cases.
  - Fixed Mojo::Log to work with older versions of Perl.
  - Fixed typo.

0.991250  2009-08-18
  - This release contains many substantial changes that are not backwards
    compatible, but good news is that it's also the last major feature breaking
    release before 1.0. ;) Older releases of Mojo did contain additional
    Mojo::Script::* and Mojolicious::Script::* modules that are obsolete now
    and might break this version if they are still present on your system.
    Because of this we highly suggest that you DELETE ALL MODULES IN THE
    "Mojo", "MojoX" AND "Mojolicious" NAMESPACES MANUALLY!!!
  - Mojo::Script has been renamed to Mojo::Command, this change is not
    backwards compatible! You will have to regenerate application scripts or
    replace "Mojo(licious)::Script" with "Mojo(licious)::Command" manually.
  - Removed unused features from Mojo::Base and simplified API, this change
    is not backwards compatible!
      __PACKAGE__->attr('foo', default => 'bar');
    becomes
      __PACKAGE__->attr(foo => 'bar');
  - Merged eplite and epl, this change is not backwards compatible, you will
    have to rename all your eplite templates to epl.
  - Simplified MojoX::Renderer, this change is not backwards compatible!
    Handler can no longer be detected, that means default_handler or the
    handler argument are required. The template argument can no longer contain
    format or handler.
      $self->render(template => 'foo.html.epl');
    becomes
      $self->render('foo', format => 'html', handler => 'epl');
    The following forms are available now.
      $self->render;
      $self->render(controller => 'foo', action => 'bar');
      $self->render({controller => 'foo', action => 'bar'});
      $self->render(text => 'Hello!');
      $self->render(template => 'index');
      $self->render(template => 'foo/index');
      $self->render(
        template => 'index',
        format   => 'html',
        handler  => 'epl'
      );
      $self->render(handler => 'something');
      $self->render('foo/bar');
      $self->render('foo/bar', format => 'html');
      $self->render('foo/bar', {format => 'html'});
    For renderers the stash will no longer get an updated template, instead a
    new argument will be passed along.
        {template => 'foo/bar', format => 'html', handler => 'epl'}
  - Simplified context and controller in Mojolicious, this change is not
    backwards compatible! If you've been using a custom context object you'll
    now have to use a custom controller base class. The new controller_class
    attribute can now be used to set the default controller in Mojolicious.
    There is also no $c argument anymore actions get called with, since
    everything is in $self now.
  - Refactored and renamed Mojo::Transaction and Mojo::Pipeline, this change is
    not backwards compatible!
      Mojo::Transaction -> Mojo::Transaction::Single
      Mojo::Pipeline -> Mojo::Transaction::Pipeline
  - Refactored and renamed Mojo::File and Mojo::File::Memory, this change is
    not backwards compatible!
      Mojo::File -> Mojo::Asset::File
      Mojo::File::Memory -> Mojo::Asset::Memory
  - Refactored and renamed Mojo::Content, this change is not backwards
    compatible!
      Mojo::Content -> Mojo::Content::Single
  - Added conditions to MojoX::Routes.
  - Added routes script to Mojolicious.
  - Simplified Mojo::Base.
  - Simplified exceptions.
  - Changed Mojo::Log to default to utf8 when writing to a file.
  - Made build_tx a callback named build_tx_cb in Mojo.
  - Made the exception template a bit more fault tolerant.
  - Made controller base class configurable in MojoX::Dispatcher::Routes.
  - Removed address, password and user methods from Mojo::URL.
  - Fixed Microsoft IIS CGI and FastCGI environment support.
  - Fixed prefix handling in MojoX::Dispatcher::Static.
  - Fixed max_age in Mojo::Cookie.
  - Fixed cloning of urls with base in Mojo::URL.
  - Fixed parsing of multiple headers and cookies with same name.
  - Fixed pipeline support in Mojo::Client. (acajou)
  - Fixed utf8 handling in Mojo::Parameters. (vti)
  - Fixed Mojo::Scripts to only allow word characters in script names.
  - Fixed security problem in MojoX::Dispatcher::Static. (trendels)

0.991246  2009-08-01
  - Fixed typo.

0.991245  2009-07-31
  - Added spin_app to Mojo::Client and simplified API.
  - Added port support to Mojo::Cookie.
  - Made chunk size configurable with MOJO_CHUNK_SIZE environment variable.
  - Simplified script system startup.
  - Fixed Windows bug where eplite templates would not be detected right.

0.991244  2009-07-30
  - Fixed package.

0.991243  2009-07-28
  - Made eplite ignore everything after __END__.
  - Made proxy support more portable.
  - Simplified progress callbacks.
  - Added local host bin address support to Mojo::Server::Daemon.
  - Fixed layouts on Windows and made templates portable, "/" is now the
    separator on all platforms. (charsbar)
  - Fixed dependency on Getopt::Long 2.38. (kevinold)
  - Fixed Perl 5.8.1 prereqs. (alias)

0.991242  2009-07-27
  - Cleaned up the whole script system, this change is mostly backwards
    compatible except for a few cases.
      "daemon $port" now becomes "daemon -p $port"
      "mojolicious mojo $script" becomes "mojolicious $script"
  - Added HTML escape expression marks "<%==" and "%==" to Mojo::Template.
  - Added more Mojolicious::Lite examples and reformatted them into a
    tutorial.
  - Fixed a bridge bug in MojoX::Dispatcher.

0.991241  2009-07-20
  - Mojolicious::Lite has been introduced as a new entry level web framework
    example.
  - Mojo::Message::Response will now default to response code 200, this change
    is not backwards compatible. In Mojolicious you should use
    ->render(text => 'Hello!') instead of ->res->body('Hello!') now.
  - Changed routes syntax again, this change is not entirely backwards
    compatible but will only affect you if you are using the relaxed and
    wildcard variations.
      "/((foo))" becomes "/(.foo)"
      "/(((foo)))" becomes "/(*foo)"
  - Updated Mojolicious to support ->render(text => 'Hello World!').
  - Updated Mojo::Script::get_data to use "@@ $name" instead of "__$name__".
  - Updated our routes implementation to support HTTP request methods.
  - Updated Mojo::Home to fallback to FindBin for detection.
  - Made Mojolicious much more fault tolerant.
  - Fixed PATH_INFO handling of the CGI environment parser in
    Mojo::Message::Request.
  - Added url_for and render_partial to Mojolicious::Controller.
  - Added namespace support to Mojo::Template.
  - Added eplite handler to Mojolicious::Renderer.
  - Added generator for lite apps.
  - Allow log level override via environment variable in Mojo::Log.
  - Code cleanup.

0.991240  2009-07-19
  - Turned Mojolicious layout rendering inside out for better exception
    handling and to make layouts configurable from templates.
  - Added debug helpers to Mojo::Server::FastCGI.
  - Fixed detection bug in Mojo::Home.
  - Fixed generator bug in Mojo::Script.
  - Fixed Windows related parser bug in Mojo::Loader::Exception.

0.991239  2009-07-16
  - Renamed bin directory to script, old apps should not break but you are
    still encouraged to rename the directory yourself.
  - Simplified Mojo::Template, this will only affect you if you are using
    Mojo::Template directly.
  - Added setuid/setgid support to Mojo::Server::Daemon and
    Mojo::Server::Daemon::Prefork. (James Duncan)
  - Updated Mojo::Server::FastCGI and Mojo::Server::Daemon::Prefork to use the
    application logger.
  - Fixed import problem in Mojo::Server::Daemon::Prefork. (James Duncan)
  - Fixed warning in "template.t".

0.991238  2009-07-16
  - Fixed all shebang lines.

0.991237  2009-07-15
  - Renamed process_local to process_app in Mojo::Client, this change is not
    backwards compatible and you might have to change some of your tests.
  - Simplified MojoX::Renderer.
  - Simplified Mojo::Loader.
  - Simplified Mojo::ByteStream.
  - Simplified exceptions.
  - Updated all modules to use IO::Poll instead of IO::Select.
  - Updated exception handling in Mojolicious to work with exceptions in epl
    templates.
  - Updated Mojo and Mojolicious to log to STDERR if log directory isn't
    writable.
  - Updated Mojo and Mojolicious to work without boilerplate and a single
    MyApp.pm file.
  - Added html_encode and html_decode methods to Mojo::ByteStream.
  - Improved 100 Continue handling. (acajou)
  - Improved Mojo::Template exception handling.
  - Cleaned up exception code.
  - Fixed possible infinite loop in Mojo::Server::FastCGI.

0.991236  2009-07-05
  - Simplified Mojo::Home.
  - Moved executable detection to Test::Mojo::Server.
  - Improved Mojo::Loader::Exception.
  - Fixed at_least_version. (yuki-kimoto)

0.991235  2009-07-05
  - Removed prepare/finalize methods from Mojolicious.

0.991234  2009-07-03
  - Added name and value filters to Mojo::Headers. (acajou)
  - Added clean multiline value handling to Mojo::Headers.
  - Added prepare/finalize methods to Mojolicious.
  - Added some additional MIME types to MojoX::Types.
  - Renamed method add_line to add in Mojo::Headers.
  - Updated generator scripts to play nice with MM->parse_version.

0.991233  2009-07-01
  - Rewrote Mojo::Client::process_local to use the new state machine.
  - Added Server and X-Powered-By headers.
  - Fixed external server tests.
  - Fixed Mojo::Date handling of negative epoch values.

0.991232  2009-06-29
  - Fixed tarball.

0.991231  2009-06-29
  - Rewrote MojoX::Renderer, it is not backwards compatible and templates need
    to be renamed in the following 3 part format "index.html.tt"!
  - Added exception support to MojoX::Dispatcher::Routes, this change is not
    backwards compatible and "dispatch" calls now return exception objects for
    errors and false otherwise.
  - Changed routes syntax, this change is not backwards compatible and you need
    to change all your existing routes.
      "/:foo" becomes "/(foo)"
      "/^foo" becomes "/((foo))"
      "/*foo" becomes "/(((foo)))"
  - Added full HTTP 1.1 pipelining support to all Mojo layers.
  - Added layout support to MojoX::Renderer.
  - Made render call optional.
  - Added format support to MojoX::Routes.
  - Added module Mojo::Loader::Exception.
  - Added wildcard symbol support to MojoX::Routes and rewrote many routes
    internals.
  - Added Makefile.PL generator.
  - Added HttpOnly support to Mojo::Cookie. (burak)
  - Support more CGI implementations.
  - Added support for namespaces only dispatching in MojoX::Dispatcher::Routes.
  - Added encoding support to Mojo::Template and made "utf8" the default.
  - Added HEAD support to Mojo::Server::Daemon. (acajou)
  - Added new relaxed placeholder to MojoX::Routes::Pattern.
  - Added module Mojo::Template::Exception.
  - Added HEAD support to the Mojo::Transaction state machine and related
    modules. (acajou)
  - Added safe_post option to Mojo::Pipeline. (acajou)
  - Made chained => 1 the default in Mojo::Base.
  - Fixed compiler bug in Mojo::Template that prevented more advanced control
    structures, you might have to add additional semicolons to some of your
    templates.
  - Fixed Mojo::Date to not crash on invalid dates. (vti)
  - Fixed chunked support in Mojo::Server::Daemon and Mojo::Client.
  - Fixed tokenizer in MojoX::Routes::Pattern to support "0" values.
    (Anatoly Sharifulin)
  - Fixed parsing of "0" in Mojo::Path. (charsbar)
  - Fix server tests on Windows. (charsbar)
  - Fixed leading whitespace problem in the request parser. (acajou)
  - Fixed broken pipe problem in Mojo::Server::CGI. (vti)
  - Added more diagnostics options to Mojo::HelloWorld. (uwe)
  - Fixed empty cookie parsing. (vti)
  - Fixed a case where child processes migth hang in
    Mojo::Server::Daemon::Prefork. (gbarr)
  - Fixed a bug in MojoX::Dispatcher::Routes where the renderer would be called
    with an empty stack. (melo)
  - Fixed a escaping problem in Mojo::Parameters. (vti)
  - Updated Mojo::URL to be more template friendly.
  - Improved Solaris compatibility.

0.9002  2009-02-16
  - Added local_address(), local_port(), remote_address() and remote_port() to
    Mojo::Transaction.

0.9001  2009-01-28
  - Added proper home detection to Mojo itself. (charsbar)
  - Fixed a bug where errors got cached in the router. (charsbar)
  - Updated error handling in MojoX::Dispatcher::Static.
  - Fixed Mojo::Message::Request::cookies() to always return an array
    reference.
  - Fixed url_for to support references. (vti)
  - Fixed unescaping of captures. (vti)

0.9  2008-12-01
  - Added modes to Mojolicious.
  - Added module Mojo::Log and log support for Mojo/Mojolicious.
  - Added module MojoX::Context.
  - Changed MojoX::Renderer and Mojo::Template API to make catching errors
    easier, we now use a scalar ref for results like most template engines.
  - Added multi-level controller class support to Mojolicious.
  - MojoX::Dispatcher::Routes should be able to fail.
  - Added diagnostics functions to Mojo::HelloWorld.
  - Made the env parser Apache compatible.
  - Made Mojo::Server::FastCGI Apache compatible.
  - Added namespace, class and method captures to MojoX::Dispatcher::Routes.
  - Made url_for work for rebased applications.
  - Added ctx, render, req, res and stash methods to Mojolicious controllers.
  - Changed cookie, param and upload in Mojo::Parameters to return a list.
  - Added support for templateless renderers to MojoX::Renderer.
  - Added blacklist to MojoX::Dispatcher::Routes.
  - Fixed Mojo::Date bugs. (vti)
  - Fixed / routes matching too much.
  - New Windows workaround in Mojo::Client and Mojo::Server::Daemon.
  - Added ".perltidyrc". (Ask Bjoern Hansen)
  - Allow chains to be broken with return values in MojoX::Dispatcher::Routes.
  - The stack in MojoX::Routes resets now.
  - Renamed default_handler to default_format in MojoX::Renderer.
  - Disallow actions beginning with _ in MojoX::Dispatcher::Routes.
  - Preload application in servers. (Graham Barr)
  - Renamed is_version to at_least_version. (Mark Stosberg)
  - Added documentation for Mojo::Log. (Mark Stosberg)
  - Add test for MojoX::Renderer. (Mark Stosberg)
  - When testing, allow servers a few seconds to stop. (Leon Brocard)

0.8009  2008-11-07
  - Fixed escaping in Mojo::URL.
  - Fixed query string support and escaping in Mojo::Parameters.
  - Optimized randomness in Mojo::Client. (Leon Brocard)
  - Randomized handle order in Mojo::Client
  - Mojo::Client now prefers writes over reads.
  - Added copy_to and move_to to Mojo::File.
  - Made the daemons about 20% faster.
  - Fallback to default renderer in MojoX::Renderer. (Ask Bjoern Hansen)
  - Made Mojo::Base instantiation a little bit faster.
  - Added documentation to Mojo::Base. (Marcus Ramberg)
  - Moved the home attribute from Mojolicious to Mojo.
  - Fixed MojoX::Renderer to pass options through to the handler.
    (Ask Bjoern Hansen)
  - Fixed Mojo::Server::FastCGI according to the spec.
  - Dispatchers now return true or false.
  - Added documentation to Mojo::Home. (Mark Stosberg)
  - Added documentation to Mojo::Buffer. (Mark Stosberg)
  - Removed replace from Mojo::Buffer. (Mark Stosberg)

0.8008  2008-11-07
  - Fixed multipart parsing for short requests.
  - Fixed content file storage to specific file.
  - Fixed lowercase appclasses.

0.8007  2008-11-07
  - Cleaned up the API some more.
  - Added param to Mojo::Message.
  - Added "server.t". (Mark Stosberg)
  - Fixed infinite loop in Mojo::File. (Leon Brocard)

0.8006  2008-11-06
  - Simplified API by removing aliases, this will help with subclassing
    annoyances but might break some existing code if you are using long
    versions of formerly aliased attributes.
  - Fixed application/x-www-form-urlencoded.
  - Fixed support for query strings.
  - Fixed multi-value query parameter support.
  - Added a context class to the Mojolicious generator.
  - Cleaned up Mojo::Server API. (Mark Stosberg)
  - Increased Mojo::Template performance. (Pedro Melo)

0.8.5  2008-11-04
  - Fixed version. (Andreas Koenig)

0.8.4  2008-11-04
  - Improved caching in Mojo::Message.
  - Added upload and cookie method to Mojo::Message.
  - Changed uploads behavior in Mojo::Message to bring it in line with cookies.

0.8.3  2008-11-03
  - Removed filter from Mojo::Base and added warnings.
  - Added caching to uploads in Mojo::Message. (Mark Stosberg)

0.8.2  2008-11-01
  - Removed OS X resource fork files.

0.8.1  2008-11-01
  - Made "daemon.t" developer only.

0.8  2008-10-21
  - Fixed Mojo::Server::Daemon Windows support.
  - Generated applications now have individually named executables.
  - Changed Mojolicious default application templates to something more sane.
  - Mojo::Base accessors don't take multiple arguments anymore, this results in
    a 25% speed increase.
  - Added MOJO_MAX_MEMORY_SIZE environment variable.
  - Added prepare_parser and prepare_builder callbacks to Mojo::Message.
  - Added done and is_done to Mojo::Stateful.
  - Fixed many Windows related bugs.
  - Fixed keep-alive related bugs in daemon and client. (Pedro Melo)
  - Allow default in Mojo::Base to have false values. (Pedro Melo)
  - Fixed chmod_rel_file in Mojo::Script. (Shu Cho).
  - Mojo::Base attributes can't start with a digit. (Shu Cho).
  - Fixed Content-Length header for empty messages.
  - Removed warning from Mojo.pm.
  - Renamed gate to bridge in MojoX::Routes.
  - Added waypoint() to MojoX::Routes.
  - Added named url_for to MojoX::Routes and Mojolicious.
  - Fixed documentation links.

0.7  2008-10-11
  - Added the Mojolicious web framework example.
  - Added upload and GET/POST parameter helpers to Mojo::Message.
  - Hooks for upload progress and stuff added.
  - Refactored transfer encoding code into Mojo::Filter and
    Mojo::Filter::Chunked.
  - Added callbacks for start-line and header generators.
  - Added workaround for missing IO::Seekable support in older versions of
    File::Temp (Perl 5.8).
  - script/mojo.pl got renamed to bin/mojo.
  - Mojo::Cache got renamed to Mojo::File, because there will be a cache
    module named MojoX::Cache, and that could cause confusion later on.
  - Fixed many escaping related bugs around Mojo::URL.
  - Fixed 100-Continue support in Mojo::Server::Daemon and Mojo::Client.
  - Countless small bugs fixed and tests added.

0.6  2008-09-24
  - Many more bug fixes.

0.5  2008-09-24
  - Many small bug fixes.

0.4  2008-09-24
  - Moved everything into the Mojo namespace.

0.3  2008-09-24
  - Fixed documentation.

0.2  2008-09-24
  - First release.
