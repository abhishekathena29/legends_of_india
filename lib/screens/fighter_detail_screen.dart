import 'package:flutter/material.dart';

import '../models/fighter.dart';
import '../theme/app_theme.dart';
import '../widgets/app_background.dart';
import '../widgets/event_map_card.dart';

class FighterDetailScreen extends StatefulWidget {
  const FighterDetailScreen({super.key, required this.fighter});

  final Fighter fighter;

  @override
  State<FighterDetailScreen> createState() => _FighterDetailScreenState();
}

class _FlatEvent {
  const _FlatEvent({
    required this.event,
    required this.chapterTitle,
    required this.chapterSubtitle,
    required this.chapterIndex,
  });

  final TimelineEvent event;
  final String chapterTitle;
  final String chapterSubtitle;
  final int chapterIndex;
}

class _FighterDetailScreenState extends State<FighterDetailScreen> {
  late final PageController _pageController;
  late final List<_FlatEvent> _events;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.94);
    _events = [
      for (
        var chapterIndex = 0;
        chapterIndex < widget.fighter.chapters.length;
        chapterIndex++
      )
        for (final event in widget.fighter.chapters[chapterIndex].events)
          _FlatEvent(
            event: event,
            chapterTitle: widget.fighter.chapters[chapterIndex].title,
            chapterSubtitle: widget.fighter.chapters[chapterIndex].subtitle,
            chapterIndex: chapterIndex,
          ),
    ];
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToPage(int index) {
    if (index < 0 || index >= _events.length) return;
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 280),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    final fighter = widget.fighter;
    return Scaffold(
      body: AppBackground(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              stretch: true,
              expandedHeight: 420,
              backgroundColor: AppColors.charcoal,
              leading: Padding(
                padding: const EdgeInsets.all(8),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.22),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () => Navigator.of(context).maybePop(),
                    icon: const Icon(Icons.arrow_back_rounded),
                    color: Colors.white,
                  ),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Hero(
                      tag: fighter.id,
                      child: Image.asset(
                        fighter.portraitAsset,
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withValues(alpha: 0.2),
                            Colors.black.withValues(alpha: 0.45),
                            AppColors.charcoal,
                          ],
                        ),
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(24, 120, 24, 24),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                fighter.title.toUpperCase(),
                                style: Theme.of(context).textTheme.labelSmall
                                    ?.copyWith(
                                      color: AppColors.goldLight,
                                      letterSpacing: 2.8,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                fighter.name,
                                style: Theme.of(context).textTheme.displaySmall
                                    ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      height: 1.04,
                                    ),
                              ),
                              const SizedBox(height: 14),
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                spacing: 12,
                                children: [
                                  Text(
                                    fighter.born,
                                    style: Theme.of(context).textTheme.bodySmall
                                        ?.copyWith(color: Colors.white70),
                                  ),
                                  Container(
                                    width: 28,
                                    height: 1,
                                    color: AppColors.gold.withValues(
                                      alpha: 0.45,
                                    ),
                                  ),
                                  Text(
                                    fighter.died,
                                    style: Theme.of(context).textTheme.bodySmall
                                        ?.copyWith(color: Colors.white70),
                                  ),
                                ],
                              ),
                              if (fighter.quote != null) ...[
                                const SizedBox(height: 16),
                                Container(
                                  padding: const EdgeInsets.only(left: 14),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        color: AppColors.gold.withValues(
                                          alpha: 0.65,
                                        ),
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    '"${fighter.quote}"',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          color: Colors.white.withValues(
                                            alpha: 0.86,
                                          ),
                                          fontStyle: FontStyle.italic,
                                          height: 1.45,
                                        ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 18, 16, 32),
                child: Column(
                  children: [
                    _ProgressHeader(
                      currentPage: _currentPage,
                      totalPages: _events.length,
                      chapterIndex: _events[_currentPage].chapterIndex,
                      chapterTitle: _events[_currentPage].chapterTitle,
                      chapterSubtitle: _events[_currentPage].chapterSubtitle,
                    ),
                    const SizedBox(height: 18),
                    SizedBox(
                      height: 560,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: _events.length,
                        onPageChanged: (value) {
                          setState(() => _currentPage = value);
                        },
                        itemBuilder: (context, index) {
                          final data = _events[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: _EventPageCard(event: data.event),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: _currentPage == 0
                                ? null
                                : () => _goToPage(_currentPage - 1),
                            icon: const Icon(Icons.chevron_left_rounded),
                            label: const Text('Previous'),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: _currentPage == _events.length - 1
                                ? null
                                : () => _goToPage(_currentPage + 1),
                            iconAlignment: IconAlignment.end,
                            icon: const Icon(Icons.chevron_right_rounded),
                            label: const Text('Next'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 8,
                      runSpacing: 8,
                      children: List.generate(_events.length, (index) {
                        final active = index == _currentPage;
                        return GestureDetector(
                          onTap: () => _goToPage(index),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 220),
                            width: active ? 26 : 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: active ? AppColors.gold : AppColors.border,
                              borderRadius: BorderRadius.circular(999),
                            ),
                          ),
                        );
                      }),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Swipe left or right to navigate',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.muted.withValues(alpha: 0.75),
                      ),
                    ),
                    const SizedBox(height: 28),
                    FilledButton.tonalIcon(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(Icons.arrow_back_rounded),
                      label: const Text('Explore Other Fighters'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProgressHeader extends StatelessWidget {
  const _ProgressHeader({
    required this.currentPage,
    required this.totalPages,
    required this.chapterIndex,
    required this.chapterTitle,
    required this.chapterSubtitle,
  });

  final int currentPage;
  final int totalPages;
  final int chapterIndex;
  final String chapterTitle;
  final String chapterSubtitle;

  @override
  Widget build(BuildContext context) {
    final progress = (currentPage + 1) / totalPages;
    return HistoricalCard(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.menu_book_rounded,
                size: 18,
                color: AppColors.gold,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(999),
                  child: LinearProgressIndicator(
                    value: progress,
                    minHeight: 7,
                    backgroundColor: AppColors.border.withValues(alpha: 0.7),
                    valueColor: const AlwaysStoppedAnimation(AppColors.gold),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                '${currentPage + 1} / $totalPages',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.muted,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Text(
            'CHAPTER ${chapterIndex + 1}',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: AppColors.gold,
              letterSpacing: 2.6,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            chapterTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 4),
          Text(
            chapterSubtitle,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.muted,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}

class _EventPageCard extends StatelessWidget {
  const _EventPageCard({required this.event});

  final TimelineEvent event;

  @override
  Widget build(BuildContext context) {
    return HistoricalCard(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (event.coordinates != null && event.location != null)
            SizedBox(
              height: 200,
              width: double.infinity,
              child: EventMapCard(
                coordinates: event.coordinates!,
                location: event.location!,
              ),
            ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        '${event.year}',
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(
                              color: AppColors.gold,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      if (event.month != null)
                        Text(
                          event.month!,
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(color: AppColors.muted),
                        ),
                      _TypeBadge(type: event.type),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    event.title,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      height: 1.15,
                    ),
                  ),
                  if (event.location != null) ...[
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Icon(
                          Icons.place_outlined,
                          size: 16,
                          color: AppColors.primaryLight,
                        ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            event.location!,
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(color: AppColors.muted),
                          ),
                        ),
                      ],
                    ),
                  ],
                  const SizedBox(height: 16),
                  Text(
                    event.description,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppColors.charcoal.withValues(alpha: 0.84),
                    ),
                  ),
                  if (event.quote != null) ...[
                    const SizedBox(height: 18),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withValues(alpha: 0.05),
                        borderRadius: BorderRadius.circular(18),
                        border: Border(
                          left: BorderSide(
                            color: AppColors.gold.withValues(alpha: 0.95),
                            width: 3,
                          ),
                        ),
                      ),
                      child: Text(
                        '"${event.quote}"',
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              color: AppColors.primary,
                              fontStyle: FontStyle.italic,
                              height: 1.5,
                            ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TypeBadge extends StatelessWidget {
  const _TypeBadge({required this.type});

  final EventType type;

  @override
  Widget build(BuildContext context) {
    final (label, background, foreground) = switch (type) {
      EventType.birth => (
        'Birth',
        AppColors.gold.withValues(alpha: 0.16),
        AppColors.gold,
      ),
      EventType.education => (
        'Education',
        AppColors.blue.withValues(alpha: 0.12),
        AppColors.blue,
      ),
      EventType.movement => (
        'Movement',
        AppColors.primary.withValues(alpha: 0.12),
        AppColors.primary,
      ),
      EventType.milestone => (
        'Milestone',
        AppColors.gold.withValues(alpha: 0.12),
        AppColors.gold,
      ),
      EventType.arrest => (
        'Imprisonment',
        AppColors.red.withValues(alpha: 0.12),
        AppColors.red,
      ),
      EventType.death => (
        'Final Chapter',
        AppColors.charcoal.withValues(alpha: 0.10),
        AppColors.charcoal,
      ),
      EventType.achievement => (
        'Achievement',
        AppColors.green.withValues(alpha: 0.12),
        AppColors.green,
      ),
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: foreground.withValues(alpha: 0.22)),
      ),
      child: Text(
        label.toUpperCase(),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: foreground,
          letterSpacing: 1.1,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
