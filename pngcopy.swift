import Cocoa

func loadImageFromStdin() -> NSImage? {
    let stdin = FileHandle.standardInput
    let data = stdin.readDataToEndOfFile()
    return NSImage(data: data)
}

func loadImageFromFile(path: String) -> NSImage? {
    let url = URL(fileURLWithPath: path)
    return NSImage(contentsOf: url)
}


if CommandLine.arguments.count > 2 {
    print("Usage: CopyImageToClipboard <image_path or ->")
    exit(1)
}

let image: NSImage?

if CommandLine.arguments.count == 1 {
    image = loadImageFromStdin()
} else {
    let arg = CommandLine.arguments[1]

    if arg == "-" {
        image = loadImageFromStdin()
    } else {
        image = loadImageFromFile(path: arg)
    }
}

if let image = image {
    let pasteboard = NSPasteboard.general
    pasteboard.clearContents()
    pasteboard.writeObjects([image])
} else {
    print("Failed to load image")
    exit(1)
}
