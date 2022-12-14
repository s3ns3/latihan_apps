import 'package:latihan_apps/constant/apps_constant.dart';

import '../vo/selection_vo.dart';
class DataArray{

  static final DataArray _instance = DataArray();

  static DataArray get() => _instance;
  // kCategoryTransfer
  Map<int, List<SelectionVO>> mapSelection = {
    kCategoryMenuTypeTransfer: [
      SelectionVO(
          id: 1000,
          category: kCategoryTransfer,
          display: 'Transfer Antar Bank',
          valueSms: '$kCategoryBankInHouse',
          valueUssd: '1'),
      SelectionVO(
          id: 1001,
          category: kCategoryTransfer,
          display: 'Transfer Antar Rekening',
          valueSms: '$kCategoryBank',
          valueUssd: '2'),
    ],
    kCategoryMenuTypePurchase: [
      SelectionVO(
          id: 1000,
          category: kCategoryTransfer,
          display: 'Bank Mega Syariah',
          valueSms: '$kCategoryBankInHouse',
          valueUssd: '1'),
    ],

  kCategoryBank: [
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK BPD DIY', valueSms: '112', valueUssd: '112'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK BPD PAPUA', valueSms: '132', valueUssd: '132'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK RAYA', valueSms: '494', valueUssd: '494'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK MALUKU', valueSms: '131', valueUssd: '131'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK MAYORA', valueSms: '553', valueUssd: '553'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK SULTRA', valueSms: '135', valueUssd: '135'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK JAGO', valueSms: '542', valueUssd: '542'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK NAGARI', valueSms: '118', valueUssd: '118'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK SULSEL', valueSms: '126', valueUssd: '126'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK MNC INTL', valueSms: '485', valueUssd: '485'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK IFI', valueSms: '093', valueUssd: '093'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK INA PERDANA', valueSms: '513', valueUssd: '513'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK JATIM', valueSms: '114', valueUssd: '114'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK NTB', valueSms: '128', valueUssd: '128'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK NTT', valueSms: '130', valueUssd: '130'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK RIAU', valueSms: '119', valueUssd: '119'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK BENGKULU', valueSms: '133', valueUssd: '133'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK MAYBANK', valueSms: '016', valueUssd: '016'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BPD KALTENG', valueSms: '125', valueUssd: '125'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK BNI', valueSms: '009', valueUssd: '009'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK NUSANTARA PARAHYANGAN', valueSms: '145', valueUssd: '145'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BPD ACEH', valueSms: '116', valueUssd: '116'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BPD BALI', valueSms: '129', valueUssd: '129'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BPD KALTIM', valueSms: '124', valueUssd: '124'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK JABAR', valueSms: '110', valueUssd: '110'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK CTBC INDONESIA', valueSms: '949', valueUssd: '949'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK SUMUT', valueSms: '117', valueUssd: '117'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK BRI', valueSms: '002', valueUssd: '002'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK BSI', valueSms: '451', valueUssd: '451'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK MEGA SYARIAH', valueSms: '506', valueUssd: '506'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK SUMSEL', valueSms: '120', valueUssd: '120'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK UOB', valueSms: '023', valueUssd: '023'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'KB BUKOPIN', valueSms: '441', valueUssd: '441'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK CAPITAL INDONESIA, TBK.', valueSms: '054', valueUssd: '054'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK COMMONWEALTH', valueSms: '950', valueUssd: '950'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK DANAMON', valueSms: '011', valueUssd: '011'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK DKI', valueSms: '111', valueUssd: '111'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK BANTEN', valueSms: '137', valueUssd: '137'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK GANESHA', valueSms: '161', valueUssd: '161'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK WOORI SAUDARA', valueSms: '212', valueUssd: '212'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'CITIBANK N.A.', valueSms: '031', valueUssd: '031'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK JAMBI', valueSms: '115', valueUssd: '115'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BPD KALSEL', valueSms: '122', valueUssd: '122'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK QNB KESAWAN', valueSms: '167', valueUssd: '167'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK LAMPUNG', valueSms: '121', valueUssd: '121'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK MANDIRI', valueSms: '008', valueUssd: '008'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK MAYAPADA', valueSms: '097', valueUssd: '097'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK MEGA', valueSms: '426', valueUssd: '426'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK MESTIKA', valueSms: '151', valueUssd: '151'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK MUAMALAT', valueSms: '147', valueUssd: '147'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK CIMB NIAGA', valueSms: '022', valueUssd: '022'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK OCBC NISP', valueSms: '028', valueUssd: '028'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK PANIN', valueSms: '019', valueUssd: '019'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK PERMATA', valueSms: '013', valueUssd: '013'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK STANDARD CHARTERED', valueSms: '050', valueUssd: '050'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK SULUT', valueSms: '127', valueUssd: '127'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK OF INDIA INDONESIA', valueSms: '146', valueUssd: '146'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK SULTENG', valueSms: '134', valueUssd: '134'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK SINARMAS', valueSms: '153', valueUssd: '153'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK TABUNGAN NEGARA (PERSERO)', valueSms: '200', valueUssd: '200'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'SEABANK', valueSms: '535', valueUssd: '535'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK KALBAR', valueSms: '123', valueUssd: '123'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK JTRUST INDONESIA', valueSms: '095', valueUssd: '095'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK BTPN', valueSms: '213', valueUssd: '213'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK BARCLAYS', valueSms: '525', valueUssd: '525'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK JATENG', valueSms: '113', valueUssd: '113'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK ANZ', valueSms: '061', valueUssd: '061'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK RABOBANK', valueSms: '089', valueUssd: '089'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK BJB SYARIAH', valueSms: '425', valueUssd: '425'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK BCA', valueSms: '014', valueUssd: '014'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK ARTHA GRAHA', valueSms: '037', valueUssd: '037'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BCA DIGITAL', valueSms: '501', valueUssd: '501'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK CCB INDONESIA', valueSms: '036', valueUssd: '036'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK TOKYO', valueSms: '042', valueUssd: '042'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK BUMI ARTHA', valueSms: '076', valueUssd: '076'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK HSBC INDONESIA', valueSms: '087', valueUssd: '087'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK JASA JAKARTA', valueSms: '472', valueUssd: '472'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK MASPION', valueSms: '157', valueUssd: '157'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK INDOMONEX', valueSms: '498', valueUssd: '498'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK DBS INDONESIA', valueSms: '046', valueUssd: '046'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'LINKAJA', valueSms: '911', valueUssd: '911'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BPR KS', valueSms: '688', valueUssd: '688'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'S. SAMPOERNA', valueSms: '523', valueUssd: '523'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK BPR SUPRA', valueSms: '600', valueUssd: '600'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK WOORI INDONESIA', valueSms: '068', valueUssd: '068'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK VICTORIA SYARIAH', valueSms: '405', valueUssd: '405'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK MULTI ARTA SENTOSA', valueSms: '548', valueUssd: '548'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'ALTOPAY', valueSms: '770', valueUssd: '770'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'ISO', valueSms: '888', valueUssd: '888'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'FINNET', valueSms: '777', valueUssd: '777'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK BCA SYARIAH', valueSms: '536', valueUssd: '536'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK VICTORIA INTL', valueSms: '566', valueUssd: '566'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK NATIONAL NOBU', valueSms: '503', valueUssd: '503'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK ANTARDAERAH', valueSms: '088', valueUssd: '088'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK AGRIS', valueSms: '945', valueUssd: '945'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK EKA', valueSms: '867', valueUssd: '867'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'ATMB PLUS', valueSms: '987', valueUssd: '987'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK PANIN DUBAI SYARIAH', valueSms: '517', valueUssd: '517'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'INDOSAT (IMKAS)', valueSms: '789', valueUssd: '789'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'ALLO BANK', valueSms: '567', valueUssd: '567'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'SGODPAY', valueSms: '775', valueUssd: '775'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'KB BUKOPIN SYARIAH', valueSms: '521', valueUssd: '521'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK NEO COMMERCE', valueSms: '490', valueUssd: '490'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK KEB HANA INDONESIA', valueSms: '484', valueUssd: '484'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK OKE INDONESIA', valueSms: '526', valueUssd: '526'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK ICBC INDONESIA', valueSms: '164', valueUssd: '164'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK BTPN SYARIAH', valueSms: '547', valueUssd: '547'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'DOKU', valueSms: '899', valueUssd: '899'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'THE BANK OF TOKYO MITSUBISHI UFJ LTD', valueSms: '042', valueUssd: '042'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK PRIMA MASTER', valueSms: '520', valueUssd: '520'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK SHINHAN INDONESIA', valueSms: '152', valueUssd: '152'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK MANTAP', valueSms: '564', valueUssd: '564'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK OF CHINA LIMITED', valueSms: '069', valueUssd: '069'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'XL TUNAI', valueSms: '808', valueUssd: '808'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'AMAR BANK', valueSms: '531', valueUssd: '531'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK INDEX SELINDO', valueSms: '555', valueUssd: '555'),
    SelectionVO(parentId: 1001, category: kCategoryBank, display: 'BANK ALADIN SYARIAH', valueSms: '947', valueUssd: '947'),
  ],

    kCategoryProvider: [
      SelectionVO(id: 1, display: 'Telkomsel Prabayar', category:kCategoryDenomTopupTsel, valueSms: '00001', valueUssd: '1'),
      SelectionVO(id: 2, display: 'XL Prabayar',  category:kCategoryDenomTopupXl, valueSms: '00002', valueUssd: '2'),
    ],

    kCategoryDenomProvider: [
      SelectionVO(parentId: 1, display: 'TSEL 15.000', valueSms: '15000', valueUssd: '1'),
      SelectionVO(parentId: 1, display: 'TSEL 20.000', valueSms: '20000', valueUssd: '2'),
      SelectionVO(parentId: 1, display: 'TSEL 25.000', valueSms: '25000', valueUssd: '3'),
      SelectionVO(parentId: 2, display: 'XL 15.000', valueSms: '15000', valueUssd: '1'),
      SelectionVO(parentId: 2, display: 'XL 30.000', valueSms: '30000', valueUssd: '2'),
      SelectionVO(parentId: 2, display: 'XL 40.000', valueSms: '45000', valueUssd: '3'),
    ],

    kCategoryDenomTopupTsel: [
      SelectionVO(display: '15.000', valueSms: '15000', valueUssd: '1'),
      SelectionVO(display: '20.000', valueSms: '20000', valueUssd: '2'),
      SelectionVO(display: '25.000', valueSms: '25000', valueUssd: '3'),
      SelectionVO(display: '30.000', valueSms: '30000', valueUssd: '4'),
      SelectionVO(display: '40.000', valueSms: '40000', valueUssd: '5'),
      SelectionVO(display: '50.000', valueSms: '50000', valueUssd: '6'),
      SelectionVO(display: '75.000', valueSms: '75000', valueUssd: '7'),
      SelectionVO(display: '100.000', valueSms: '100000', valueUssd: '8'),
      SelectionVO(display: '150.000', valueSms: '150000', valueUssd: '9*10'),
      SelectionVO(display: '200.000', valueSms: '200000', valueUssd: '9*11'),
      SelectionVO(display: '300.000', valueSms: '300000', valueUssd: '9*12'),
      SelectionVO(display: '500.000', valueSms: '500000', valueUssd: '9*13'),
      SelectionVO(display: '1.000.000', valueSms: '1000000', valueUssd: '9*14'),
    ],

    kCategoryDenomTopupXl: [
      SelectionVO(display: '25.000', valueSms: '25000', valueUssd: '1'),
      SelectionVO(display: '50.000', valueSms: '50000', valueUssd: '2'),
      SelectionVO(display: '100.000', valueSms: '100000', valueUssd: '3'),
      SelectionVO(display: '150.000', valueSms: '150000', valueUssd: '4'),
      SelectionVO(display: '200.000', valueSms: '200000', valueUssd: '5'),
      SelectionVO(display: '300.000', valueSms: '300000', valueUssd: '6'),
      SelectionVO(display: '500.000', valueSms: '500000', valueUssd: '7'),
      SelectionVO(display: '1.000.000', valueSms: '1000000', valueUssd: '8'),
    ],

    kCategoryProviderData: [
      SelectionVO(display: 'Telkomsel Data', category: kCategoryDenomDataTsel, valueSms: 'XLPASCA', valueUssd: '3'),
      SelectionVO(display: 'XL Data', category: kCategoryDenomDataXL, valueSms: 'XLPASCA', valueUssd: '3'),
    ],

    kCategoryDenomDataTsel: [
      SelectionVO(display: '15.000', valueSms: '15000', valueUssd: '1'),
      SelectionVO(display: '20.000', valueSms: '20000', valueUssd: '2'),
      SelectionVO(display: '25.000', valueSms: '25000', valueUssd: '3'),
      SelectionVO(display: '30.000', valueSms: '30000', valueUssd: '4'),
      SelectionVO(display: '40.000', valueSms: '40000', valueUssd: '5'),
      SelectionVO(display: '50.000', valueSms: '50000', valueUssd: '6'),
      SelectionVO(display: '75.000', valueSms: '75000', valueUssd: '7'),
      SelectionVO(display: '100.000', valueSms: '100000', valueUssd: '8'),
      SelectionVO(display: '150.000', valueSms: '150000', valueUssd: '9*10'),
    ],

    kCategoryDenomDataXL: [
      SelectionVO(display: '15.000', valueSms: '15000', valueUssd: '1'),
      SelectionVO(display: '20.000', valueSms: '20000', valueUssd: '2'),
      SelectionVO(display: '25.000', valueSms: '25000', valueUssd: '3'),
      SelectionVO(display: '30.000', valueSms: '30000', valueUssd: '4'),
      SelectionVO(display: '40.000', valueSms: '40000', valueUssd: '5'),
    ],

    kCategoryDenomWallet: [
      SelectionVO(display: '15.000', valueSms: '15000', valueUssd: '1'),
      SelectionVO(display: '20.000', valueSms: '20000', valueUssd: '2'),
      SelectionVO(display: '30.000', valueSms: '30000', valueUssd: '3'),
      SelectionVO(display: '50.000', valueSms: '50000', valueUssd: '4'),
      SelectionVO(display: '75.000', valueSms: '75000', valueUssd: '5'),
      SelectionVO(display: '100.000', valueSms: '100000', valueUssd: '6'),
      SelectionVO(display: '150.000', valueSms: '150000', valueUssd: '7'),
      SelectionVO(display: '200.000', valueSms: '200000', valueUssd: '8'),
    ],

    kCategoryCardless: [
      SelectionVO(display: '100.000', valueSms: '100000', valueUssd: '100000'),
      SelectionVO(display: '300.000', valueSms: '300000', valueUssd: '300000'),
      SelectionVO(display: '500.000', valueSms: '500000', valueUssd: '500000'),
      SelectionVO(display: '1.000.000', valueSms: '1000000', valueUssd: '1000000'),
      SelectionVO(display: 'Denom Lainnya', valueSms: 'Denom Lainnya', valueUssd: 'Denom Lainnya'),
    ],

    kCategoryWallet: [
      SelectionVO(display: 'GoPay Customer', valueSms: 'GOPAY', valueUssd: '1'),
      SelectionVO(display: 'OVO', valueSms: 'OVO', valueUssd: '2'),
     SelectionVO(display: 'Tokopedia', valueSms: '810133', valueUssd: '3'),
    ],

    //payment
    kCategoryAsuransi:[
      SelectionVO(display: 'BPJS Kesehatan', valueSms: 'BPJSKES', valueUssd: '1'),
      SelectionVO(display: 'BPJS Ketenaga Kerjaan', valueSms: 'BPJSKTT', valueUssd: '2'),
    ],


    kCategorySrac:[
      SelectionVO(display: '2123512787872135', valueSms: '2123512787872135', valueUssd: '2123512787872135'),
      SelectionVO(display: '1241214235432555', valueSms: '1241214235432555', valueUssd: '1241214235432555'),
    ],
}; // mapSelection

}