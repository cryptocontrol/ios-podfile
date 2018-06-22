import Foundation


public class CCCategories {
    public let analysis: [CCArticle]
    public let blockchain: [CCArticle]
    public let exchanges: [CCArticle]
    public let general: [CCArticle]
    public let government: [CCArticle]
    public let ico: [CCArticle]
    public let mining: [CCArticle]
    
    
    private func getObjectAsArticles (data: NSObject, key: String) -> [CCArticle] {
        var articles: [CCArticle] = []
        let rawArticles = data.value(forKey: key) as! [NSObject]
        for rawArticle in rawArticles {
            articles.append(CCArticle(data: rawArticle))
        }
        
        return articles
    }
    
    
    public init(data: NSObject) {
        var analysis: [CCArticle] = []
        var blockchain: [CCArticle] = []
        var exchanges: [CCArticle] = []
        var general: [CCArticle] = []
        var mining: [CCArticle] = []
        var ico: [CCArticle] = []
        var government: [CCArticle] = []
        
        let rawArticles1 = data.value(forKey: "analysis") as! [NSObject]
        for rawArticle in rawArticles1 {
            analysis.append(CCArticle(data: rawArticle))
        }
        
        let rawArticles2 = data.value(forKey: "blockchain") as! [NSObject]
        for rawArticle in rawArticles2 {
            blockchain.append(CCArticle(data: rawArticle))
        }
        
        let rawArticles3 = data.value(forKey: "exchanges") as! [NSObject]
        for rawArticle in rawArticles3 {
            exchanges.append(CCArticle(data: rawArticle))
        }
        
        let rawArticles4 = data.value(forKey: "general") as! [NSObject]
        for rawArticle in rawArticles4 {
            general.append(CCArticle(data: rawArticle))
        }
        
        let rawArticles5 = data.value(forKey: "mining") as! [NSObject]
        for rawArticle in rawArticles5 {
            mining.append(CCArticle(data: rawArticle))
        }
        
        let rawArticles6 = data.value(forKey: "ico") as! [NSObject]
        for rawArticle in rawArticles6 {
            ico.append(CCArticle(data: rawArticle))
        }
        
        let rawArticles7 = data.value(forKey: "government") as! [NSObject]
        for rawArticle in rawArticles7 {
            government.append(CCArticle(data: rawArticle))
        }
        
        self.analysis = analysis
        self.blockchain = blockchain
        self.exchanges = exchanges
        self.general = general
        self.mining = mining
        self.ico = ico
        self.government = government
    }
}


public class CCArticle {
    public let _id: String
    public let url: String
    public let thumbnail: String?
    public let originalImageUrl: String?
    public let title: String
    public let description: String
    public let hotness: Double
    public let activityHotness: Double
    public let primaryCategory: String
    public let words: Int
    public let similarArticles: [CCSimliarArticle]
    public let coins: [CCCoin]
    
    
    init(data: NSObject) {
        self._id = data.value(forKey: "_id") as! String
        self.title = data.value(forKey: "title") as! String
        self.description = data.value(forKey: "description") as! String
        self.thumbnail = data.value(forKey: "thumbnail") as? String
        self.url = data.value(forKey: "url") as! String
        self.originalImageUrl = data.value(forKey: "originalImageUrl") as? String
        self.hotness = data.value(forKey: "hotness") as! Double
        self.activityHotness = data.value(forKey: "activityHotness") as! Double
        self.primaryCategory = data.value(forKey: "primaryCategory") as! String
        self.words = data.value(forKey: "words") as! Int
        
        var coins: [CCCoin] = []
        let rawCoins = data.value(forKey: "coins") as! [NSObject]
        for rawCoin in rawCoins {
            coins.append(CCCoin(data: rawCoin))
        }
        self.coins = coins
        
        var similarArticles: [CCSimliarArticle] = []
        let rawSimilarArticles = data.value(forKey: "similarArticles") as! [NSObject]
        for rawSimilarArticle in rawSimilarArticles {
            similarArticles.append(CCSimliarArticle(data: rawSimilarArticle))
        }
        self.similarArticles = similarArticles
    }
}


public class CCSimliarArticle {
    public let title: String
    public let _id: String
    public let url: String
//    let publisedAt: Date
    
    init(data: NSObject) {
        self.title = data.value(forKey: "title") as! String
        self._id = data.value(forKey: "_id") as! String
        self.url = data.value(forKey: "url") as! String
    }
}


public class CCCoin {
    public let _id: String
    public let name: String
    public let slug: String
    public let tradingSymbol: String
    
    init(data: NSObject) {
        self.name = data.value(forKey: "name") as! String
        self._id = data.value(forKey: "_id") as! String
        self.slug = data.value(forKey: "slug") as! String
        self.tradingSymbol = data.value(forKey: "tradingSymbol") as! String
    }
}
