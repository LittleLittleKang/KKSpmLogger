import AFNetworking

public struct KKSpmLogger {
    public private(set) var text = "Hello, World!"

    public init() {
    }
    
    public func sayHello() {
        print("KKSpm say hello")
    }
    
    private func httpRequest() {
        
        let configuration = URLSessionConfiguration.default
        let manager = AFURLSessionManager.init(sessionConfiguration: configuration)

        let url = URL.init(string: "http://example.com/download.zip")
        let request = URLRequest.init(url: url!)

        let downloadTask = manager.downloadTask(with: request, progress: nil, destination: nil, completionHandler: { response, url, error in
            print("下载结果: \(response)")
        })

        downloadTask.resume()
    }
}
