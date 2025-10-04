\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    r4 g'' g g8 g
    a4 a8 g g g r4
    R1
    r4 g a g8 g
    \pa g g \pd g fis g g r4
    r2 r4 g8 g
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    r4 e' d e8 e
    c4 d8 d e e r4
    R1
    r4 d d d8 d
    e d16 e e8 d d d r4
    r2 r4 e8 e
  }
}

TrombaI = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    R1
    r4 r8 g' e e r4
    R1*2
    r2 g4 r
    R1
  }
}

TrombaII = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    R1
    r4 r8 g c c r4
    R1*2
    r2 g4 r
    R1
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    R1
    r4 r8 g c c r4
    R1*2
    r2 g4 r
    R1
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    r4 g''~ g16 d g g g e g g
    a a, a f' f f d d e8 c, r4
    R1
    r4 d'16 h d d d a d d d g, g' g
    e fis g8 g16 a, fis' fis g8 g, r4
    r2 r4 g'16 e g g
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    r4 g''~ g16 d g g g e g g
    a a, a f' f f d d e8 c, r4
    R1
    r4 d'16 h d d d a d d d g, g' g
    e fis g8~ g16 a, fis' fis g8 g, r4
    r2 r4 g'16 e g g
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    r4 c' d c8 c
    c4 c8 h c c e[ f16 e]
    d[ c d e] d[ f e d] c[ h c d] c[ e d c]
    h8 h h4 a8. a16 h8 d
    e d16 e c8 d d d d d
    e16[ d e c] f![ e f d] e8 e e e
  }
}

SopranoLyrics = \lyricmode {
  Te De -- um, te
  De -- um lau -- da -- mus, lau --
  da -- _ _ _
  _ mus, te Do -- mi -- num, te
  Do -- mi -- num con -- fi -- te -- mur, con -- fi --
  te -- _ _ mur, te "ae -"
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    r4 g'^\tutti g g8 g
    a4 a8 g g g g[ a16 g]
    f[ e f g] f[ a g f] e[ d e f] e[ g f e]
    d8 d g4 a8. a16 g8 g
    g g16 g g8 fis g g r4
    r2 r4 g8 g
  }
}

AltoLyrics = \lyricmode {
  Te De -- um, te
  De -- um lau -- da -- mus, lau --
  da -- _ _ _
  _ mus, te Do -- mi -- num, te
  Do -- mi -- num con -- fi -- te -- mur,
  te "ae -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    r4 e^\tutti d e8 e
    d4 d8 d e e r4
    R1
    r4 d d8. d16 d8 d
    g, g16 g a8 a h h h h
    c16[ h c a] d[ c d h] c8 c c c
  }
}

TenoreLyrics = \lyricmode {
  Te De -- um, te
  De -- um lau -- da -- mus,

  te Do -- mi -- num, te
  Do -- mi -- num con -- fi -- te -- mur, con -- fi --
  te -- _ _ mur, te "ae -"
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    r4 c'^\tutti h c8 e,
    f4 d8 g c, c r4
    R1
    r4 g' fis8. fis16 g8 h,
    c h16 c a8 d h g r4
    r2 r4 c'8 c
  }
}

BassoLyrics = \lyricmode {
  Te De -- um, te
  De -- um lau -- da -- mus,

  te Do -- mi -- num, te
  Do -- mi -- num con -- fi -- te -- mur,
  te "ae -"
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    r4 c' h c8 e,
    f4 d8 g c,4 c'~-\solo
    c h c c,
    g' g-\tutti fis g8 h,
    c h16 c a8 d h g r g'-\solo
    e4 d8 g c,4 c'-\tutti
  }
}

BassFigures = \figuremode {
  r1
  r4 <7>2.
  <2>4 <6>2.
  r1
  r4 <7>8 <_+> r2
  r4 <7>2.
}

\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { \transposedNameShort "clno" "C" "" "1, 2" }
        \partCombine #'(0 . 10) \ClarinoI \ClarinoII
      >>
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { \transposedNameShort "tr" "C" "" "1, 2" }
        \partCombine #'(0 . 10) \TrombaI \TrombaII
      >>
    >>
    \new Staff {
      \set Staff.instrumentName = \transposedTimpShort "C" "" "G" ""
      \Timpani
    }
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
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
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
    \new FiguredBass { \BassFigures }
  >>
}
