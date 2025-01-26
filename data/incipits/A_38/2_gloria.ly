\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    g''8. g16 g4 r2
    R1
    r2 g8. g16 g4
    g r8 g g4 r8 g
    e4 fis g r
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    e'8. e16 e4 r2
    R1
    r2 e8. e16 e4
    e r8 e d4 r8 d
    c2 d4 r
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    e'8. e16 e4 r2
    c16\p g( a h) c( h) c( d) e g( f e) r f( e d)
    e c( d e) d8 h e8.\f e16 e4
    c8 h16. c32 c,8 c' h a16. h32 h,8 h'
    a gis16. a32 a,8 a' g?16 g a h c d e fis
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    c'8. c16 c4 c, r
    c\p r c d8 g
    c,4 d8 g c8.\f c16 c4
    c8 h16. c32 c,8 c' h a16. h32 h,8 h'
    a gis16. a32 a,8 a' r16 g a h c h c a
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    e'8.^\tutti e16 e4 c16[^\solo g a h] c[ h c d]
    e[ h c d] e[ d e f] g[ e d c] f[ d c h]
    c[ e f g] f[ e] f d e8.^\tutti e16 e4
    e4. f16[ e] d4. e16[ d]
    c2 h4 r
  }
}

SopranoLyrics = \lyricmode {
  Glo -- ri -- a, glo -- _
  _ _ _ _
  _ _ ri -- a, glo -- ri -- a
  in ex -- cel -- sis
  De -- o,
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    g'8.^\tutti g16 g4 r2
    R1
    r2 g8. g16 g4
    g4. g8 g4. g8
    e4 fis g r
  }
}

AltoLyrics = \lyricmode {
  Glo -- ri -- a,

  glo -- ri -- a
  in ex -- cel -- sis
  De -- _ o,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    c8.^\tutti c16 c4 r2
    R1
    r2 c8. c16 c4
    c4. c8 d4. h8
    c2 d4 r
  }
}

TenoreLyrics = \lyricmode {
  Glo -- ri -- a,

  glo -- ri -- a
  in ex -- cel -- sis
  De -- o,
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    c'8.^\tutti c,16 c4 r2
    R1
    r2 c'8. c,16 c4
    c'4. c8 h4. h8
    a2 g4 r
  }
}

BassoLyrics = \lyricmode {
  Glo -- ri -- a,

  glo -- ri -- a
  in ex -- cel -- sis
  De -- o,
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    c'8. c,16 c4 r2
    R1
    r2 c'8. c,16 c4
    c'8 h16. c32 c,8 c' h a16. h32 h,8 h'
    a gis16. a32 a,8 a' g? g, r4
  }
}

\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { "clno" "1, 2" }
        \partCombine #'(0 . 10) \ClarinoI \ClarinoII
      >>
    >>
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
  >>
}
