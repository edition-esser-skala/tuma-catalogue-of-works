\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    R1
    r2 r4 d'
    d8 b r h c c r c
    a a r a b b r4
    r d8 d d4 c
    d r r2
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    R1
    r2 r4 g'
    g8 g r g g g r g
    f f r f f f r4
    r g8 a b a g4
    fis r r2
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    R1
    r2 r4 b
    b8 b r d es es r es
    c c r c d d r4
    r b8 a g2
    a4 r r2
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    R1
    r2 r4 g'
    g8 g, r g' c c, r c
    f f, r f' b b, r4
    r g'8 f es2
    d4 r r2
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    g''16( b) fis( a) g8 r r16 d es b c4~
    c16 c b( a) d( c) b( a) g8 g, r4
    r g''16( b) d,( f!) es4 es16( g) g,( c)
    a4 a'16( c) c,( es) d4 f8 es
    d d, d'2 c4
    d a16(\p b) fis( g) a( d) cis( d) a b fis g
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    d8 r b'16( d) a( c) b4 r16 g a e
    fis4. d8 d4 r
    r g'16( b) d,( f!) es4 es16( g) g,( c)
    a4 a'16( c) c,( es) d4 d8 c
    b b, g' a b a g4
    fis fis16(\p g) d( e) fis4~ fis16 g d e
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1
    r2 r4 d'^\tutti
    d8 b r h c c r c
    a a r a b b r4
    r d8 d d4 c
    d r r2
  }
}

SopranoLyrics = \lyricmode {
  Ve --
  ni -- te, ve -- ni -- te, ve --
  ni -- te, ve -- ni -- te
  ad me o -- _
  mnes
}

Alto = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1
    r2 r4 g'^\tutti
    g8 g r g g g r g
    f f r f f f r4
    r g8 a b[ a] g4
    fis r r2
  }
}

AltoLyrics = \lyricmode {
  Ve --
  ni -- te, ve -- ni -- te, ve --
  ni -- te, ve -- ni -- te,
  ad me o -- _
  mnes
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1
    r2 r4 b^\tutti
    b8 b r d es es r es
    c c r c d d r4
    r b8 a g2
    a4 r r2
  }
}

TenoreLyrics = \lyricmode {
  Ve --
  ni -- te, ve -- ni -- te, ve --
  ni -- te, ve -- ni -- te
  ad me o --
  mnes
}

Basso = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1
    r2 r4 g'
    g8 g, r g' c c, r c
    f f, r f' b b, r4
    r g'8 f es2
    d4 r r2
  }
}

BassoLyrics = \lyricmode {
  Ve --
  ni -- te, ve -- ni -- te, ve --
  ni -- te, ve -- ni -- te
  ad me o --
  mnes
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    g8-\solo r g'16( b) fis( a) g8 g, a4
    d fis g g-\tutti
    g8 g, r g' c c, r c
    f f, r f' b b, r4
    r g'8 f es2
    \mvTr d1~\p-\tasto
  }
}

BassFigures = \figuremode {
  r2. <7>4
  <_+> <6>2.
  r4. <7! _!>8 r2
  r4. <7>8 r2
  r4. <6>8 <7>4 <6>
  <_+>1
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
        \set Staff.instrumentName = "[fag]"
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
