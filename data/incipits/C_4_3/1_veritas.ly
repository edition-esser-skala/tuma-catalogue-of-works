\version "2.24.2"
\include "header.ly"

TromboneSolo = {
  \relative c' {
    \clef alto
    \key g \minor \time 3/4 \tempoMarkup "Andante"
    R2.
    r4 d-!-\solo d-!
    g,-! g'8( fis) g( a)
    \appoggiatura g fis4 f8( e) f( g) \gotoBar "29"
    R2.
    fis8(-\tutti g) g( a) a( fis)
    g( fis) g4 r
    es8( f) f( g) g( es)
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key g \minor \time 3/4 \tempoMarkup "Andante"
    R2.*4 \gotoBar "29"
    R2.
    fis8( g) g( a) a( fis)
    g( fis) g4 r
    es8( f) f( g) g( es)
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key g \minor \time 3/4 \tempoMarkup "Andante"
    R2.*4 \gotoBar "29"
    R2.
    d4 c c
    b8( a) b4 r
    g g c
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 3/4 \tempoMarkup "Andante"
    r8 \tuplet 3/2 8 { g''16 fis g } d8 \tuplet 3/2 8 { g16 fis g } b,8 \tuplet 3/2 8 { d16 c d }
    g,,4 r r
    R2.
    r8 \tuplet 3/2 8 { a''16\p g a } d4 r \gotoBar "29"
    g,,4 r r
    r8 \tuplet 3/2 8 { d''16 cis d } d,4 c'
    \tuplet 3/2 8 { b16 a g } r8 r4 r
    r8 \tuplet 3/2 8 { c16 h c } c,4 b'4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 3/4 \tempoMarkup "Andante"
    r8 \tuplet 3/2 8 { g''16 fis g } d8 \tuplet 3/2 8 { g16 fis g } b,8 \tuplet 3/2 8 { d16 c d }
    g,,4 r r
    R2.
    r8 \tuplet 3/2 8 { a''16\p g a } d4 r \gotoBar "29"
    g,,8 d'' c( b) a( g)
    fis( e) d4 r
    d' c8( b) a( g)
    es'( d) c4 r
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \minor \time 3/4 \tempoMarkup "Andante" \autoBeamOff
    R2.*4 \gotoBar "29"
    d'4^\tutti c8([ b)] a([ g)]
    fis([ e)] d4 r
    d' c8([ b)] a([ g)]
    es'([ d)] c4 r
  }
}

SopranoLyrics = \lyricmode {
  Ve -- ri -- tas
  me -- a,
  ve -- ri -- tas
  me -- a,
}

Alto = {
  \relative c' {
    \clef alto
    \key g \minor \time 3/4 \tempoMarkup "Andante" \autoBeamOff
    R2.*4 \gotoBar "29"
    R2.
    fis8([^\tutti g)] g([ a)] a([ fis)]
    g([ fis)] g4 r
    es8([ f)] f([ g)] g([ es)]
  }
}

AltoLyrics = \lyricmode {
  Ve -- ri -- tas
  me -- a,
  ve -- ri -- tas,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 3/4 \tempoMarkup "Andante" \autoBeamOff
    R2.*4 \gotoBar "29"
    R2.
    d4^\tutti c c
    b8[( a]) b4 r
    g g c
  }
}

TenoreLyrics = \lyricmode {
  Ve -- ri -- tas
  me -- a,
  ve -- ri -- tas
}

Basso = {
  \relative c {
    \clef bass
    \key g \minor \time 3/4 \tempoMarkup "Andante" \autoBeamOff
    R2.*4 \gotoBar "29"
    R2.
    d8([^\tutti e)] e([ fis)] fis([ d)]
    g4 g, r
    c8([ d)] d([ es!)] es([ c)]
  }
}

BassoLyrics = \lyricmode {
  Ve -- ri -- tas
  me -- a,
  ve -- ri -- tas
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 3/4 \tempoMarkup "Andante"
    \mvTr g4\p-\solo g g
    g r r
    g b c
    d r h \gotoBar "29"
    g r c
    \mvTr d8(\f-\tutti e) e( fis) fis( d)
    g4 g, r
    c8( d) d( es) es( c)
  }
}

BassFigures = \figuremode {
  r2.
  r
  r4 <6> q
  <_+>2 <5!>4
  r2 <6>8 <5>
  <_+>4 <6> <\t>
  r2.
  r
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { \smallStaffDistance } {
        \set Staff.instrumentName = \markup \center-column { "trb" "solo" }
        \TromboneSolo
      }
      \new GrandStaff <<
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
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
