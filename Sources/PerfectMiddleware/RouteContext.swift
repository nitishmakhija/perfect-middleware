import PerfectHTTP

/**
 * Protocol representing the route context
 * @author Benoit BRIATTE http://www.digipolitan.com
 * @copyright 2017 Digipolitan. All rights reserved.
 */
public protocol RouteContext: AnyObject {
    /** Retrieves the request */
    var request: HTTPRequest { get }
    /** Retrieves the response */
    var response: HTTPResponse { get }

    /** Go to the next middleware */
    func next()

    /** Retrieves or modify user information inside the route context */
    subscript(_: String) -> Any? { get set }
}
