const fieldFontXSmall  = 10.0;
const fieldFontSmall  = 12.0;
const fieldFontMedium = 14.0;
const fieldFontLarge  = 16.0;
const fieldFontXLarge = 18.0;

const String kAppsTitle = 'BPDDIY';

const String kFolderImagesBanks = 'images/banks';
const String kFolderImagesIcons = 'images/icons';
const String kFolderImagesMerchant = 'images/merchants';
const String kFolderImagesHomeScreen = 'images/home';
const kAssetIconFolder = 'images/icons/';
const String bankInhourse = '112';

const kFingerdebugPrintPass = '*';

const kLangInd = 1;
const kLangEng = 2;

const kChannelSms = 1;
const kChannelUssd = 2;
const kChannelData = 3;

const kInboxStatusUnRead = 0;
const kInboxStatusRead = 1;

const kQRStatic =0;
const kQRDinamic =1;

//apps lenght
const kAppsPass=12;
const kAppsSrac=12;
const kAppsDsac=28;

const kInboxTypeTransfer = 'FUND_TRF';
const kInboxTypeTransferOther = 'FUND_TRF_OTH';
const kInboxTypeTransferBiFast = 'BI_FAST_TRF';
const kInboxTypePayment = 'BILL_PMT';
const kInboxTypePurchase = 'PMT_SIM';
const kInboxTypeCardles = 'CARD_LESS_RSVP';
const kInboxTypeQrpay = 'QR_PAY';
const kInboxTypeQrpayReff = 'QR_REF';


const kAppsSeparator = ',';
const kSelectionEnterNew = '**';

const kMapInboxType = {
  kInboxTypeTransfer: 'Transfer Sesama',
  kInboxTypeTransferOther: 'Transfer Antar Bank',
  kInboxTypeTransferBiFast: 'Transfer BI Fast',
  kInboxTypePayment: 'Pembayaran',
  kInboxTypePurchase: 'Pembelian',
  kInboxTypeCardles: 'Cash Withdrawal',
  kInboxTypeQrpay: 'QR Pay',
  kInboxTypeQrpayReff: 'QR Pay',
};

//table setting
const TABLE_SETTING = 's';
const SETTING_ID = 'i';
const SETTING_DATA = 'd';

const ID_ENC_KEY = 1;
const ID_PASSWORD = 2; // enc
const ID_LANG = 3;
const ID_CHANNEL = 4;
const ID_AGREED_ON = 5; // enc, yyyyMMddHHmmss
const ID_RSA_PRIVATE = 6;
const ID_RSA_PUBLIC = 7;
const ID_DATA_KEY = 8; // enc
const ID_ICCID = 9; // enc
const ID_PHONE_NO = 10; // enc
const ID_TOKEN = 11; // enc
const ID_SRAC = 20; // enc
const ID_BANK = 22; // enc

const ID_FAILED_LOGIN = 21; // enc, loginRety:lastFailed
const ID_BANK_VERSION = 23; // enc

//table account
const TABLE_ACCOUNT = 'a';
const ACCOUNT_ID = 'i';
const MENU_TYPE = 'm';
const ACCOUNT_DATA = 'd';

//table inbox
const TABLE_INBOX = 'i';
const INBOX_ID = 'i';
const INBOX_DATE = 'd';
const INBOX_TRX_CODE = 't';
const INBOX_DATA = 'x'; // encrypted json data -> inbox_data

//Bifast data
const kValueProxy = '01';
const kValueNonProxy ='02';


const kCategorySrac = 1;
const kCategoryTransfer = 2;
const kCategoryBank = 3;
const kCategoryDsac = 4;
const kCategoryBankCC = 5;
const kCategoryCurrency = 6;
const kCategoryBankBifast = 7;

//category denom
const kCategoryDenomTopupTsel = 10;
const kCategoryDenomDataTsel = 11;
const kCategoryDenomDataXL = 15;
const kCategoryDenomWallet = 12;
const kCategoryMonth = 13;
const kCategoryDenomTopupXl = 14;
const kCategoryDenomProvider = 16;

//category transaction
const kCategoryMenuTypeTransfer = 100;
const kCategoryMenuTypePurchase = 101;
const kCategoryMenuTypePayment = 102;

//category purchase
const kCategoryProvider = 301;
const kCategoryProviderData = 302;
const kCategoryWallet = 303;

//category payment
const kCategoryTelephone = 401;
const kCategoryTax= 402;
const kCategoryPBB = 403;
const kCategoryRetribusi = 404;
const kCategoryPDAM= 405;
const kCategoryAsuransi= 406;
const kCategoryTicket = 407;

const kCategoryUniversitas = 408;
const kCategoryUniversitasMuhamaddiyah = 4081;
const kCategoryUniversitasMercuBuana= 4082;
const kCategoryUniversitasAhmaddahlan= 4083;

//category BI Fast
const kCategoryTransferBiFastTrx = 201;
const kCategoryTransferBiFastSet = 202;
const kCategoryTransferBiFastInfo = 203;

const kCategoryProxy = 2011;
const kCategoryTrxPurpose = 2012;

const kCategoryPLN= 409;
const kCategoryPLNPostpaid= 4091;
const kCategoryPLNPrepaid= 4092;
const kCategoryPLNNonTag= 4093;
const kCategoryPLNAdvice= 4094;

const kCategoryEcommerce= 410;
const kCategoryPPN= 411;
const kCategorySamsat= 412;

const kCategoryCardless= 501;

const kCategoryCreditApplication= 502;

const kMenuTypeQrPay = 600;

const kCategoryBankInHouse = 200;

// size
const kFontSizeXSmall = 10.0;
const kFontSizeSmall = 12.0;
const kFontSizeMedium = 14.0;
const kFontSizeLarge = 16.0;
const kFontSizeXLarge = 18.0;
const kFontSizeHeader = 24.0;
const kFontSizeLargeHeader = 28.0;








