import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: ContainerWidget(),
    );
  }
}

class ContainerWidget extends StatelessWidget{

  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          drawer: const Drawer(),
          body:  Container(
            color: null,
            height: 500,
            width: 800,
            margin: const EdgeInsets.all(30),
            padding: const EdgeInsets.all(20),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration (
              color: const Color.fromARGB(255, 169, 152, 151),
              border:  Border.all(color:const Color.fromARGB(255, 74, 64, 64), width: 30),
              borderRadius:  BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 200,
                    spreadRadius: 0,
                    blurStyle: BlurStyle.solid,
                    offset: Offset.zero
                ),
              ],
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/nature.jpg"),
                  repeat: ImageRepeat.repeat
              ),
            ),
            child: const Text('Nature', style: TextStyle(
                color: Color.fromARGB(255, 38, 26, 7),
                fontSize: 25,
                backgroundColor: Color.fromARGB(255, 182, 149, 149)
            ),
                textAlign: TextAlign.end
            ),
          )
      ),
    );
  }
/// * child (Type: Widget?)
/// the most important property (widget) inside container is child, because by using it
/// we can add any other widget.
/// * height property (Type: double?) to control it:
/// - height: 200,
/// - height: double.infinity,
/// - height: double.maxFinite,
/// - height: double.minPositive,

/// * width property has the same type and control as height

/// * margin (Type: EdgeInsetsGeometry?)
/// Empty space to surround the [decoration] and [child].
/// to control it:
/// - margin: const EdgeInsets.symmetric(horizontal: 10),
///   /or/ margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
/// - margin: const EdgeInsets.only(left: 10),
///   /or/ margin: const EdgeInsets.only(right: 10, left: 15),
///   /or/ margin: const EdgeInsets.only(right: 10, left: 15, top: 10),
///   /or/ margin: const EdgeInsets.only(right: 10, left: 15, top: 10, bottom: 10),
/// - margin: const EdgeInsets.fromLTRB(10, 20, 15, 25),
/// - margin: const EdgeInsets.all(30),

/// * padding (Type: EdgeInsetsGeometry?)
/// the internal margins between the background frame and the container frame
/// to control it:
/// - the same as margin.
/// note (very important)
/// sometimes if you design the same padding in all the directions you find unequality
/// in the distances, this unequality comes from the fontSize, the length of
/// the data Text widget and maybe there are other charachterestics that can affect on it

/// * decoration (Type: Decoration?)
/// its properties are:
/// - color: discussed property.
///    Note :
///     The color property should be preferred when the background is a simple color. For other cases,
///     such as gradients or images, use the [decoration] property. If the [decoration] is used, this
///     property must be null. A background color may still be painted by the [decoration] even if this
///     property is null.
/// - border: to control it
///    * border: Border(top: BorderSide(color: Colors.black, width: 15,),
///                right: BorderSide(color: Color.fromARGB(255, 77, 70, 70), width: 15,),
///                bottom: BorderSide(color: Colors.black87, width: 22,),
///                left: BorderSide(color: Colors.white70, width: 25,)
///                ),
///    * border: Border.symmetric(vertical : BorderSide(color: Colors.black, width: 15),
///                         horizontal : BorderSide(color: Colors.black, width: 15)
///                         )
///    * border:  Border.all(color: const Color.fromARGB(255, 74, 64, 64), width: 10),
///      note: The borders are inner borders; they decrease from the length and the width of the
///      container.
/// - borderRadius: to control it:
///   * borderRadius:  BorderRadius.circular(30),
///   * borderRadius:  BorderRadius.circular(30),
///   * borderRadius: const BorderRadius.all(Radius.circular(10)),
///   * borderRadius: const BorderRadius.all(Radius.elliptical(10, 40)),
///   * borderRadius: const BorderRadius.horizontal(left: Radius.circular(10),
///                                                 right: Radius.circular(30))
///   * borderRadius: const BorderRadius.vertical(top: Radius.circular(10),
///                                               bottom: Radius.circular(30))
///   * borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),
///                                       topRight: Radius.circular(15),
///                                       bottomLeft: Radius.circular(20),
///                                       bottomRight: Radius.circular(25)
///                                       )
///  - image: we 've two types of loading images
///    * from network
///       image: const DecorationImage(
///           image: NetworkImage("https://bpac.in/wp-content/uploads/2021/08/BlogsArtboard-1-copy-9.jpg")
///         ),
///    * from the app
///       image: const DecorationImage(
///           image: NetworkImage("images/nature 2.jpg")
///         ),
///       image widget contains some classes
///     > fit: which contains also some classes as charachteristics
///      1- fit: BoxFit.fill,
///         image: const DecorationImage(
///           fit: BoxFit.fill,
///           image: NetworkImage("https://bpac.in/wp-content/uploads/2021/08/BlogsArtboard-1-copy-9.jpg")
///         ),
///         function: Fill the target box by distorting the source's aspect ratio.
///      2- fit: BoxFit.contain
///         image: const DecorationImage(
///           fit: BoxFit.fill,
///           image: AssetImage("https://bpac.in/wp-content/uploads/2021/08/BlogsArtboard-1-copy-9.jpg")
///         ),
///         function: As large as possible while still preserving the source's aspect ratio.
///      3- fit: BoxFit.cover
///         image: const DecorationImage(
///           fit: BoxFit.cover,
///           image: NetworkImage("https://bpac.in/wp-content/uploads/2021/08/BlogsArtboard-1-copy-9.jpg")
///         ),
///         function: As small as possible while still preserving the source's aspect ratio.
///
///      4- fit: BoxFit.fitHeight,
///         image: const DecorationImage(
///           fit: BoxFit.cover,
///           image: NetworkImage("https://bpac.in/wp-content/uploads/2021/08/BlogsArtboard-1-copy-9.jpg")
///         ),
///         function: Make sure the full height of the source is shown,
///         while still preserving the source's aspect ratio.
///
///      5- fit: BoxFit.fitWidth,
///         image: const DecorationImage(
///           fit: BoxFit.cover,
///           image: NetworkImage("https://bpac.in/wp-content/uploads/2021/08/BlogsArtboard-1-copy-9.jpg")
///         ),
///         function: Make sure the full width of the source is shown,
///         while still preserving the source's aspect ratio.
///
///      6- fit: BoxFit.none,
///         image: const DecorationImage(
///           fit: BoxFit.cover,
///           image: NetworkImage("https://bpac.in/wp-content/uploads/2021/08/BlogsArtboard-1-copy-9.jpg")
///         ),
///         function: Align the source within the target box (by default, centering) and
///         the source's aspect ratio.
///     > repeat:
///       1 - repeat: ImageRepeat.repeat
///           function: Repeat the image in both the x and y directions until the box is filled.
///       2 - repeat: ImageRepeat.repeatX
///           function: Repeat the image in the x direction until the box is filled horizontally.
///       3 - repeat: ImageRepeat.repeatY
///           function: Repeat the image in the y direction until the box is filled vertically.
///       4 - repeat: ImageRepeat.none
///           function: Leave uncovered portions of the box transparent.
///  - boxShadow: to control it:
/*      boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 100,
                spreadRadius: 20,
                blurStyle: BlurStyle.normal,
                offset: Offset(50,100)
                ),
            ],
            */
///       1 - spreadRadius: 20,
///            The amount the box should be inflated prior to applying the blur.
///       2 - blurStyle:
///          * BlurStyle.normal : Fuzzy inside and outside. This is useful for painting shadows
///            that are offset from the shape that ostensibly is casting the shadow.
///          *  BlurStyle.inner : Fuzzy inside, nothing outside. This can make shapes appear to be lit from within.
///             note : maybe it is suitable for transparent shapes to make the within light appear.
///          * BlurStyle.outer : Nothing inside, fuzzy outside. This is useful for painting shadows
///            for partially transparent shapes, when they are painted separately but without an offset,
///            so that the shadow doesn't paint below the shape.
///          * BlurStyle.solid : fuzzy outside. This corresponds to drawing the shape, and additionally
///            drawing the blur. This can make objects appear brighter, maybe even as if they were fluorescent.
///       3 - blurRaduis: 20,
///       4 - offset: Offset.zero,
///           offset: offset(10,10),
///           offset: offset(10,-10),
///       5 - color: Colors.black,
///  - alignment:
///    Note : the alignment class has the priority to execute before the textAlign
///     Alignment.bttomCenter, The center point along the bottom edge.
///     Alignment.bttomLeft, The bottom left corner.
///     Alignment.bttomRight, The bottom right corner.
///     Alignment.center, The center point, both horizontally and vertically.
///     Alignment.centerLeft, The center point along the left edge.
///     Alignment.centerRight, The center point along the right edge.
///     Alignment.topCenter, The center point along the top edge.
///     Alignment.topLeft, The top left corner.
///     Alignment.topCenter, The center point along the top edge.
///     Alignment.topRight, The top right corner.
///
///  -pubspec.yaml functions:
///    * adding packages.
///    *   ~    folder of files or images
///    *   ~    fonts
///
///
}

