import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isLikeProvider = StateProvider((ref) => false);

class CustomAppbar extends ConsumerWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLike = ref.watch(isLikeProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Padding(
                padding: const EdgeInsets.only(left: 4),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                )),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: InkWell(
              onTap: () {
                ref.read(isLikeProvider.notifier).state =
                    !ref.read(isLikeProvider.notifier).state;
              },
              child: isLike == false
                  ? const Icon(
                      Icons.favorite_outline,
                      size: 20,
                    )
                  : const Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                      size: 20,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
