import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 22) {
                    ZStack {
                        Circle()
                            .fill(.blue.gradient)
                            .frame(width: 110, height: 110)
                        Image(systemName: "person.fill")
                            .font(.system(size: 52))
                            .foregroundStyle(.white)
                    }

                    Text("Đỗ Thành Đạt")
                        .font(.largeTitle.bold())

                    Text("Thông tin cá nhân")
                        .font(.headline)
                        .foregroundStyle(.secondary)

                    InfoCard(title: "Giới thiệu",
                             text: "Ứng dụng giới thiệu thông tin về Đỗ Thành Đạt. Bạn có thể chỉnh sửa nội dung trong ContentView.swift để thêm tiểu sử, sở thích, liên hệ và các thông tin khác.")

                    InfoCard(title: "Thông tin",
                             text: "Họ tên: Đỗ Thành Đạt\nTên ứng dụng: DoThanhDat\nNền tảng: iOS")

                    InfoCard(title: "Mục tiêu",
                             text: "Một trang hồ sơ cá nhân đơn giản, hiện đại và dễ tùy chỉnh.")

                    Text("DoThanhDat • Profile")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                        .padding(.top, 8)
                }
                .padding()
            }
            .navigationTitle("Đỗ Thành Đạt")
        }
    }
}

struct InfoCard: View {
    let title: String
    let text: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.title3.bold())
            Text(text)
                .foregroundStyle(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 18))
    }
}

#Preview {
    ContentView()
}
