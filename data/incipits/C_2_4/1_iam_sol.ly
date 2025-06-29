\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key b \major \time 4/4 \tempoMarkup "Allegro"
    R1*3
    r2 r8 f a b
    a16 f g a b c d e f8 f, r4
    r8 d' d c b4 r
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key b \major \time 4/4 \tempoMarkup "Allegro"
    R1*2
    r8 b d f d16 b c d es f g a
    b8 b, r es f2~
    f4. g8 a a a g
    f4 r r8 b b a
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key b \major \time 4/4 \tempoMarkup "Allegro"
    R1
    r8 f, a b a16 f g a b c d es
    f8 f, r c' f, b r c
    d4. c8 b d es d
    c4 r r8 f f e
    d4 r r8 d d c
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key b \major \time 4/4 \tempoMarkup "Allegro"
    r8 b-! d-! f-! d16 b c d es f g a
    b8 b, r d16 e f4. es8
    d8. c16 b8 a b4. a8
    g g' f es d d c b
    f'4. e8 d4 r
    r8 b' b( a) g4 r
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key b \major \time 4/4 \tempoMarkup "Allegro"
    R1*3
    r2 r8 f a b
    a16 f g a b c d e f8 f, r4
    r8 d' d( c) b4 r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key b \major \time 4/4 \tempoMarkup "Allegro"
    R1*2
    r8 b d f d16 b c d es f g a
    b8 b, r es f2~
    f4. g8 a a a( g)
    f4 r r8 b b( a)
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key b \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    R1*3
    r2 r8 f a b
    a16[ f g a] b[ c d e] f8 f, r4
    r8 d' d[ c] b4 r
  }
}

SopranoLyrics = \lyricmode {
  Iam sol re --
  ce -- _ _ dit,
  re -- ce -- dit,
}

Alto = {
  \relative c' {
    \clef alto
    \key b \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    R1*2
    r8 b^\tutti d f d16[ b c d] es[ f g a]
    b8 b, r es f2~
    f4. g8 a a a[ g]
    f4 r r8 b b[ a]
  }
}

AltoLyrics = \lyricmode {
  Iam sol re -- ce -- _
  _ dit, re -- ce --
  _ dit, re -- ce --
  dit, re -- "ce -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key b \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    R1
    r8 f, a b a16[ f g a] b[ c d es]
    f8 f, r c' f, b r c
    d4. c8 b d es[ d]
    c4 r r8 f f[ e]
    d4 r r8 d d[ c]
  }
}

TenoreLyrics = \lyricmode {
  Iam sol re -- ce -- _
  _ dit, re -- ce -- dit, re --
  ce -- _ dit, re -- ce --
  dit, re -- ce --
  dit, re -- "ce -"
}

Basso = {
  \relative c {
    \clef bass
    \key b \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    r8 b d f d16[ b c d] es[ f g a]
    b8 b, r d16[ e] f4. es?8
    d8.[ c16 b8. a16] b4. a8
    g g' f[ es] d d c[ b]
    f' f f[ e] d4 r
    r8 b' b[ a] g4 r
  }
}

BassoLyrics = \lyricmode {
  Iam sol re -- ce -- _
  _ dit, re -- ce -- _
  _ _ _
  dit, re -- ce -- dit, re -- ce --
  dit, re -- ce -- dit,
  re -- ce -- dit,
}

Organo = {
  \relative c {
    \clef bass
    \key b \major \time 4/4 \tempoMarkup "Allegro"
    r8 b-!-\tutti d-! f-! d16-! b c-! d es-! f g-! a
    b8-! b, r d16 e f4. es8
    d8. c16 b8 a b4. a8
    g g' f es d d c b
    f'4. e8 d4 r
    r8 b' b( a) g4 r
  }
}

BassFigures = \figuremode {
  r1
  r8 <5>4 <6>8 <3>2
  <10 6>4. <6>2 <[6]>8
  r4 <6>8 q q4 q
  r2 <5>
  r1
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { \smallStaffDistance } {
        \set Staff.instrumentName = "cnto"
        \Cornetto
      }
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
      \new Staff {
        \set Staff.instrumentName = "fag"
        \Fagotto
      }
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
